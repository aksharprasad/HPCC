IMPORT HAR.HARSplit as C;
IMPORT LearningTrees as LT;
IMPORT ML_Core;
IMPORT ML_Core.Discretize;

EXPORT HARClassification := MODULE

EXPORT classify(INTEGER s, INTEGER e) := FUNCTION

xy1 := C.getTrainData(s,e);
x1 := xy1(number < 72);
ynd1 := PROJECT(xy1(number = 72), TRANSFORM(RECORDOF(LEFT), SELF.number := 1, SELF := LEFT)); 
y1 := Discretize.ByRounding(ynd1);

cf := LT.ClassificationForest(numTrees := 32, maxDepth := 10);
m1 := cf.GetModel(x1, y1);
p1 := cf.Classify(m1, C.Xtest);

//confusion := ML_Core.Analysis.Classification.ConfusionMatrix(p1, C.Ytest);

RETURN p1;
END;

EXPORT cf := LT.ClassificationForest(numTrees := 32, maxDepth := 32);
EXPORT model := cf.GetModel(C.Xtrain, C.Ytrain);
EXPORT predicted := cf.Classify(model, C.Xtest);
EXPORT report := ML_Core.Analysis.Classification.Accuracy(predicted, C.Ytest);
EXPORT confusion := ML_Core.Analysis.Classification.ConfusionMatrix(predicted, C.Ytest);
//EXPORT byClass := ML_Core.Analysis.Classification.AccuracyByClass(predicted, C.Ytest);
//EXPORT probs := cf.GetClassProbs(model, C.Xtest);
//EXPORT featureImportance := cf.FeatureImportance(model);

END;