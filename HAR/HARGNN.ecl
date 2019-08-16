IMPORT HAR.HARDataset as H;
IMPORT Python3 AS Python;
IMPORT GNN;
IMPORT GNN.Tensor;
IMPORT GNN.Internal.Types AS iTypes;
IMPORT GNN.Types;
IMPORT GNN.GNNI;
IMPORT GNN.Internal AS Int;
IMPORT Std.System.Thorlib;

EXPORT HARGNN := MODULE

SHARED LayerDef := Types.LayerDef;
SHARED kString := iTypes.kString;
SHARED initParms := iTypes.initParms;
SHARED t_Tensor := Tensor.R4.t_Tensor;
SHARED TensData := Tensor.R4.TensData;
SHARED nodeId := Thorlib.node();
SHARED nNodes := Thorlib.nodes();

SHARED trainRec := RECORD
  UNSIGNED id;
  SET OF DECIMAL5_4 x;
  UNSIGNED2 y;
END;

EXPORT tr := H.train;
EXPORT te := H.test;

SHARED trainRec convert(tr L, INTEGER C) := TRANSFORM
		SELF.x := [L.one_0, L.two_0, L.three_0, L.four_0, L.five_0, L.six_0, L.seven_0, L.eight_0, L.nine_0, L.one_1, L.two_1, L.three_1, L.four_1, L.five_1, L.six_1, L.seven_1, L.eight_1, L.nine_1, L.one_2, L.two_2, L.three_2, L.four_2, L.five_2, L.six_2, L.seven_2, L.eight_2, L.nine_2, L.one_3, L.two_3, L.three_3, L.four_3, L.five_3, L.six_3, L.seven_3, L.eight_3, L.nine_3, L.one_4, L.two_4, L.three_4, L.four_4, L.five_4, L.six_4, L.seven_4, L.eight_4, L.nine_4, L.one_5, L.two_5, L.three_5, L.four_5, L.five_5, L.six_5, L.seven_5, L.eight_5, L.nine_5, L.one_6, L.two_6, L.three_6, L.four_6, L.five_6, L.six_6, L.seven_6, L.eight_6, L.nine_6, L.one_7, L.two_7, L.three_7, L.four_7, L.five_7, L.six_7, L.seven_7, L.eight_7, L.nine_7];
		SELF.y := L.class;
		SELF.id := L.id;
END;

EXPORT train0 := PROJECT(tr,convert(LEFT,COUNTER));		
EXPORT test0 := PROJECT(te,convert(LEFT,COUNTER));		

EXPORT trainX0 := NORMALIZE(train0, 72, TRANSFORM(TensData,
                            SELF.indexes := [LEFT.id, (COUNTER-1)/9 + 1,(COUNTER-1)%9 + 1],
                            SELF.value := LEFT.x[COUNTER]));
														
EXPORT trainY0 := NORMALIZE(train0, 6, TRANSFORM(TensData,
                            SELF.indexes := [LEFT.id, COUNTER],
                            SELF.value := IF(COUNTER = LEFT.y + 1,1,0)));

//EXPORT trainX0 := DATASET('~thor::trainx0__p410730848',TensData,Thor);
//EXPORT trainY0 := DATASET('~thor::trainy0__p1285294767',TensData,Thor);
														
EXPORT trainX := Tensor.R4.MakeTensor([0, 8, 9], trainX0);
EXPORT trainY:= Tensor.R4.MakeTensor([0, 6], trainY0);
														
EXPORT retX := Tensor.R4.GetData(trainX);			
EXPORT retY := Tensor.R4.GetData(trainY);			
								
EXPORT testX0 := NORMALIZE(test0, 72, TRANSFORM(TensData,
                            SELF.indexes := [LEFT.id, (COUNTER-1)/9 + 1,(COUNTER-1)%9 + 1],
                            SELF.value := LEFT.x[COUNTER]));
														
EXPORT testY0 := NORMALIZE(test0, 6, TRANSFORM(TensData,
                            SELF.indexes := [LEFT.id, COUNTER],
                            SELF.value := IF(COUNTER = LEFT.y + 1,1,0)));

//EXPORT testX0 := DATASET('~thor::testx0__p1862465040',TensData,Thor);
//EXPORT testY0 := DATASET('~thor::testy0__p3802926045',TensData,Thor);

EXPORT testX := Tensor.R4.MakeTensor([0, 8, 9], testX0);
EXPORT testY := Tensor.R4.MakeTensor([0, 6], testY0);

EXPORT reteX := Tensor.R4.GetData(testX);			
EXPORT reteY := Tensor.R4.GetData(testY);		

/*SHARED ldef := DATASET([{1, '''layers.LSTM(64, input_shape=(8,9))'''},
								{2, '''layers.Dense(32, activation='relu')'''},
                {3, '''layers.Dense(6, activation='softmax')'''}
                ], LayerDef);*/

SHARED ldef := DATASET([{1, '''layers.LSTM(64, input_shape=(8,9))'''},
                {2, '''layers.Dropout(0.5)'''},
								{3, '''layers.Dense(32, activation='relu')'''},
                {4, '''layers.Dense(6, activation='softmax')'''}
                ], LayerDef);
								
SHARED compileDef := '''compile(loss='categorical_crossentropy', optimizer='adam', metrics=['accuracy'])''';

EXPORT s := GNNI.GetSession();
EXPORT mod := GNNI.DefineModel(s, ldef, compileDef);
EXPORT wts := GNNI.GetWeights(mod);
EXPORT mod2 := GNNI.Fit(mod, trainX, trainY, batchSize := 128, numEpochs := 10);
EXPORT metrics := GNNI.EvaluateMod(mod2, testX, testY);
EXPORT preds := GNNI.Predict(mod2, testX);

EXPORT testYDat := Tensor.R4.GetData(testY);
EXPORT predDat := Tensor.R4.GetData(preds);

EXPORT cmp := JOIN(testYDat, predDat, LEFT.indexes[1] = RIGHT.indexes[1], TRANSFORM({SET OF REAL indexes, 
                                              REAL pred, REAL actual, BOOLEAN test},
                  SELF.indexes := LEFT.indexes, SELF.pred := RIGHT.value, SELF.actual := LEFT.value,
                  SELF.test := RIGHT.value = LEFT.value), LEFT OUTER, LOCAL);

END;