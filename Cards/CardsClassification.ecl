IMPORT Cards.CardsSplit2 as C;
IMPORT LearningTrees as LT;
IMPORT ML_Core;

EXPORT CardsClassification := MODULE
EXPORT cf := LT.ClassificationForest(numTrees := 32);
EXPORT model := cf.GetModel(C.Xtrain, C.Ytrain);
EXPORT predicted := cf.Classify(model, C.Xtest);
EXPORT report := ML_Core.Analysis.Classification.Accuracy(predicted, C.Ytest);
EXPORT confusion := ML_Core.Analysis.Classification.ConfusionMatrix(predicted, C.Ytest);
EXPORT byClass := ML_Core.Analysis.Classification.AccuracyByClass(predicted, C.Ytest);
EXPORT probs := cf.GetClassProbs(model, C.Xtest);
EXPORT featureImportance := cf.FeatureImportance(model);

END;