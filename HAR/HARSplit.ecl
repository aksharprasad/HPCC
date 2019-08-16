IMPORT HAR.HARDataset as H;
IMPORT ML_Core.Discretize;
IMPORT ML_Core;

EXPORT HARSplit := MODULE

EXPORT tr := H.train;
EXPORT te := H.test;

EXPORT getTrainData(UNSIGNED s, UNSIGNED e) := FUNCTION
	TrainSub := PROJECT(tr[s..e], H.Layout);
	ML_Core.ToField(TrainSub,TrainNFSub);
	Return TrainNFSub;
END;
 
ML_Core.ToField(tr, TrainNF);
EXPORT Train := TrainNF;
EXPORT XTrain := Train(number < 73); 
EXPORT YtrainND := PROJECT(Train(number = 73), TRANSFORM(RECORDOF(LEFT), SELF.number := 1, SELF := LEFT)); 
EXPORT Ytrain := Discretize.ByRounding(YtrainND);

ML_Core.ToField(te, TestNF);
EXPORT Test := TestNF;
EXPORT XTest := Test(number < 73); 
EXPORT YtestND := PROJECT(Test(number = 73), TRANSFORM(RECORDOF(LEFT), SELF.number := 1, SELF := LEFT));
EXPORT Ytest := Discretize.ByRounding(YtestND);

END;