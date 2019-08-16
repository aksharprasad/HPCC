#OPTION('outputLimit',400);
import Python3 as Python;
import HAR.HARDataset as H;

outRec := RECORD
	INTEGER one;
	INTEGER two;
END;

result := RECORD
	INTEGER t;
END;	

STREAMED DATASET(outRec) train(STREAMED DATASET(H.Layout) inDS, UNSIGNED otherParam) := EMBED(Python:Activity)
	from numpy import mean
	from numpy import std
	from numpy import array
	from tensorflow.keras.models import Sequential
	from tensorflow.keras.layers import Dense
	from tensorflow.keras.layers import Flatten
	from tensorflow.keras.layers import Dropout
	from tensorflow.keras.layers import LSTM
	from tensorflow.keras.utils import to_categorical
  
	def getOutput(param,r):
			for i in range(len(r)):
				tup = tuple([int(r[i]),int(ytest[i])])
				yield tup
	
	X = []
	y = []
	accuracy = -1
	for rec in inDS:
		l = list(rec)
		y.append(l[-1])
		del l[-1]
		del l[0]
		X.append(l)
	
	X = array(X)
	y = array(y)
	
	y = y.reshape(len(y),1)
	
	split = int(len(X)*0.7)
	Xtrain = X[:split, :]
	Xtest = X[split:, :]
	ytrain = y[:split]
	ytest = y[split:]
	
	ytrain = ytrain.reshape(len(ytrain),1)
	ytest = ytest.reshape(len(ytest),1)
	
	ytrain = to_categorical(ytrain)
	ytest_ = to_categorical(ytest)
	
	Xtrain = Xtrain.reshape((Xtrain.shape[0],8,9))
	Xtest = Xtest.reshape((Xtest.shape[0],8,9))
	
	epochs, batch_size = 15, 64
	n_timesteps, n_features, n_outputs = Xtrain.shape[1], Xtrain.shape[2], ytrain.shape[1]
	model = Sequential()
	model.add(LSTM(50, input_shape=(n_timesteps,n_features)))
	model.add(Dropout(0.5))
	model.add(Dense(50, activation='relu'))
	model.add(Dense(n_outputs, activation='softmax'))
	model.compile(loss='categorical_crossentropy', optimizer='adam', metrics=['accuracy'])
	model.fit(Xtrain, ytrain, epochs=epochs, batch_size=batch_size)
	res = array(model.predict_classes(Xtest, batch_size=batch_size))
	
	return getOutput(2,res)
ENDEMBED;
	
out := train(H.train + H.test,2);
//OUTPUT(out);	

result check(outRec L,INTEGER C):=TRANSFORM
	SELF.t := IF(L.one = L.two,1,0);
END;

final := PROJECT(out, check(LEFT,COUNTER));
//OUTPUT(final);
OUTPUT(COUNT(final(t=1))/COUNT(final),named('accuracy'));