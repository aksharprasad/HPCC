//IMPORT Cards.CardsDataset as C;
IMPORT Cards.CardsSplit as C;
import Python3 as Python;

EXPORT CardsCNN := MODULE

SHARED outRec := RECORD
	INTEGER one;
	INTEGER two;
END;

SHARED result := RECORD
	INTEGER t;
END;	

EXPORT STREAMED DATASET(outRec) train(STREAMED DATASET(C.CardsRandomExtended) inDS, UNSIGNED otherParam) := EMBED(Python:Activity)
	from numpy import mean
	from numpy import std
	from numpy import array
	from tensorflow.keras.models import Sequential
	from tensorflow.keras.layers import Dense
	from tensorflow.keras.layers import Flatten
	from tensorflow.keras.layers import Dropout
	from tensorflow.keras.layers import LSTM,Conv1D,Flatten,Dropout,MaxPooling1D
	from tensorflow.keras.utils import to_categorical
  
	def getOutput(param,r):
			for i in range(len(r)):
				tup = tuple([int(r[i]),int(ytest[i])])
				yield tup

	def getOutput_(param,r):
			return r.shape
	
	def addNoise(l):
			r = []
			c = [0.9,1,1.1]
			for j in l:
					t = []
					for i in j:
							t.append(c[random.randint(0,2)]*i)
					r.append(t)    
			return r  
	
	X = []
	y = []
	for rec in inDS:
			l = list(rec)
			y.append(l[30])
			del l[30]
			del l[-1]
			del l[0]
			X.append(l)

	X = array(X).reshape((len(X),4,29))
	y = array(y).reshape(((len(y),1)))
	
	X = X.swapaxes(1,2)
	
	split = int(len(X)*0.7)
	Xtrain = X[:split, :, :]
	Xtest = X[split:, :, :]
	ytrain = y[:split]
	ytest = y[split:]
	
	ytrain = ytrain.reshape(len(ytrain),1)
	ytest = ytest.reshape(len(ytest),1)
	
	#ytrain = to_categorical(ytrain)
	#ytest_ = to_categorical(ytest)
	
	#return getOutput(2,Xtrain)
	
	#Xtrain = Xtrain.reshape((Xtrain.shape[0],8,9))
	#Xtest = Xtest.reshape((Xtest.shape[0],8,9))
	
	m = Sequential()
	m.add(Conv1D(filters=64, kernel_size=20, activation='relu', input_shape=(Xtrain.shape[1],Xtrain.shape[2])))
	m.add(Dropout(0.2))
	m.add(MaxPooling1D(pool_size=2))
	m.add(Flatten())
	m.add(Dense(1, activation='sigmoid'))
	m.compile(loss='binary_crossentropy', optimizer='adam', metrics=['accuracy'])
	m.fit(Xtrain, ytrain, batch_size=512, epochs=10)
	res = array(m.predict_classes(Xtest))
	return getOutput(2,res)
ENDEMBED;
	
EXPORT out := train(C.CardsRandomSort,2);

SHARED result check(outRec L,INTEGER C):=TRANSFORM
	SELF.t := IF(L.one = L.two,1,0);
END;

EXPORT final := PROJECT(out, check(LEFT,COUNTER));
EXPORT accuracy := COUNT(final(t=1)) / COUNT(final);

END;