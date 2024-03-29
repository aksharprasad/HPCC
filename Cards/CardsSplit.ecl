﻿IMPORT Cards.CardsDataset as C;

EXPORT CardsSplit := MODULE

EXPORT LayoutCardsExtended := RECORD
C.CardsData;
DECIMAL5_4 v1_2 := 0;
DECIMAL5_4 v1_1 := 0; 
DECIMAL5_4 v1_0 := 0;
DECIMAL5_4 v2_2 := 0;
DECIMAL5_4 v2_1 := 0; 
DECIMAL5_4 v2_0 := 0;
DECIMAL5_4 v3_2 := 0;
DECIMAL5_4 v3_1 := 0; 
DECIMAL5_4 v3_0 := 0;
DECIMAL5_4 v4_2 := 0;
DECIMAL5_4 v4_1 := 0; 
DECIMAL5_4 v4_0 := 0;
DECIMAL5_4 v5_2 := 0;
DECIMAL5_4 v5_1 := 0; 
DECIMAL5_4 v5_0 := 0;
DECIMAL5_4 v6_2 := 0;
DECIMAL5_4 v6_1 := 0; 
DECIMAL5_4 v6_0 := 0;
DECIMAL5_4 v7_2 := 0;
DECIMAL5_4 v7_1 := 0; 
DECIMAL5_4 v7_0 := 0;
DECIMAL5_4 v8_2 := 0;
DECIMAL5_4 v8_1 := 0; 
DECIMAL5_4 v8_0 := 0;
DECIMAL5_4 v9_2 := 0;
DECIMAL5_4 v9_1 := 0; 
DECIMAL5_4 v9_0 := 0;
DECIMAL5_4 v10_2 := 0;
DECIMAL5_4 v10_1 := 0; 
DECIMAL5_4 v10_0 := 0;
DECIMAL5_4 v11_2 := 0;
DECIMAL5_4 v11_1 := 0; 
DECIMAL5_4 v11_0 := 0;
DECIMAL5_4 v12_2 := 0;
DECIMAL5_4 v12_1 := 0; 
DECIMAL5_4 v12_0 := 0;
DECIMAL5_4 v13_2 := 0;
DECIMAL5_4 v13_1 := 0; 
DECIMAL5_4 v13_0 := 0;
DECIMAL5_4 v14_2 := 0;
DECIMAL5_4 v14_1 := 0; 
DECIMAL5_4 v14_0 := 0;
DECIMAL5_4 v15_2 := 0;
DECIMAL5_4 v15_1 := 0; 
DECIMAL5_4 v15_0 := 0;
DECIMAL5_4 v16_2 := 0;
DECIMAL5_4 v16_1 := 0; 
DECIMAL5_4 v16_0 := 0;
DECIMAL5_4 v17_2 := 0;
DECIMAL5_4 v17_1 := 0; 
DECIMAL5_4 v17_0 := 0;
DECIMAL5_4 v18_2 := 0;
DECIMAL5_4 v18_1 := 0; 
DECIMAL5_4 v18_0 := 0;
DECIMAL5_4 v19_2 := 0;
DECIMAL5_4 v19_1 := 0; 
DECIMAL5_4 v19_0 := 0;
DECIMAL5_4 v20_2 := 0;
DECIMAL5_4 v20_1 := 0; 
DECIMAL5_4 v20_0 := 0;
DECIMAL5_4 v21_2 := 0;
DECIMAL5_4 v21_1 := 0; 
DECIMAL5_4 v21_0 := 0;
DECIMAL5_4 v22_2 := 0;
DECIMAL5_4 v22_1 := 0; 
DECIMAL5_4 v22_0 := 0;
DECIMAL5_4 v23_2 := 0;
DECIMAL5_4 v23_1 := 0; 
DECIMAL5_4 v23_0 := 0;
DECIMAL5_4 v24_2 := 0;
DECIMAL5_4 v24_1 := 0; 
DECIMAL5_4 v24_0 := 0;
DECIMAL5_4 v25_2 := 0;
DECIMAL5_4 v25_1 := 0; 
DECIMAL5_4 v25_0 := 0;
DECIMAL5_4 v26_2 := 0;
DECIMAL5_4 v26_1 := 0; 
DECIMAL5_4 v26_0 := 0;
DECIMAL5_4 v27_2 := 0;
DECIMAL5_4 v27_1 := 0; 
DECIMAL5_4 v27_0 := 0;
DECIMAL5_4 v28_2 := 0;
DECIMAL5_4 v28_1 := 0; 
DECIMAL5_4 v28_0 := 0;
DECIMAL Amount_2 := 0;
DECIMAL Amount_1 := 0;
DECIMAL Amount_0 := 0;
END;

tet := TABLE(C.CardsData,LayoutCardsExtended);

LayoutCardsExtended AssignRandomValues(LayoutCardsExtended L,LayoutCardsExtended R):= TRANSFORM
SELF.v1_2 := L.v1_1;
SELF.v1_1 := L.v1_0;
SELF.v1_0 := L.v1;
SELF.v2_2 := L.v2_1;
SELF.v2_1 := L.v2_0; 
SELF.v2_0 := L.v2;
SELF.v3_2 := L.v3_1;
SELF.v3_1 := L.v3_0; 
SELF.v3_0 := L.v3;
SELF.v4_2 := L.v4_1;
SELF.v4_1 := L.v4_0; 
SELF.v4_0 := L.v4;
SELF.v5_2 := L.v5_1;
SELF.v5_1 := L.v5_0; 
SELF.v5_0 := L.v5;
SELF.v6_2 := L.v6_1;
SELF.v6_1 := L.v6_0; 
SELF.v6_0 := L.v6;
SELF.v7_2 := L.v7_1;
SELF.v7_1 := L.v7_0; 
SELF.v7_0 := L.v7;
SELF.v8_2 := L.v8_1;
SELF.v8_1 := L.v8_0; 
SELF.v8_0 := L.v8;
SELF.v9_2 := L.v9_1;
SELF.v9_1 := L.v9_0; 
SELF.v9_0 := L.v9;
SELF.v10_2 := L.v10_1;
SELF.v10_1 := L.v10_0; 
SELF.v10_0 := L.v10;
SELF.v11_2 := L.v11_1;
SELF.v11_1 := L.v11_0; 
SELF.v11_0 := L.v11;
SELF.v12_2 := L.v12_1;
SELF.v12_1 := L.v12_0; 
SELF.v12_0 := L.v12;
SELF.v13_2 := L.v13_1;
SELF.v13_1 := L.v13_0; 
SELF.v13_0 := L.v13;
SELF.v14_2 := L.v14_1;
SELF.v14_1 := L.v14_0; 
SELF.v14_0 := L.v14;
SELF.v15_2 := L.v15_1;
SELF.v15_1 := L.v15_0; 
SELF.v15_0 := L.v15;
SELF.v16_2 := L.v16_1;
SELF.v16_1 := L.v16_0; 
SELF.v16_0 := L.v16;
SELF.v17_2 := L.v17_1;
SELF.v17_1 := L.v17_0; 
SELF.v17_0 := L.v17;
SELF.v18_2 := L.v18_1;
SELF.v18_1 := L.v18_0; 
SELF.v18_0 := L.v18;
SELF.v19_2 := L.v19_1;
SELF.v19_1 := L.v19_0; 
SELF.v19_0 := L.v19;
SELF.v20_2 := L.v20_1;
SELF.v20_1 := L.v20_0; 
SELF.v20_0 := L.v20;
SELF.v21_2 := L.v21_1;
SELF.v21_1 := L.v21_0; 
SELF.v21_0 := L.v21;
SELF.v22_2 := L.v22_1;
SELF.v22_1 := L.v22_0; 
SELF.v22_0 := L.v22;
SELF.v23_2 := L.v23_1;
SELF.v23_1 := L.v23_0; 
SELF.v23_0 := L.v23;
SELF.v24_2 := L.v24_1;
SELF.v24_1 := L.v24_0; 
SELF.v24_0 := L.v24;
SELF.v25_2 := L.v25_1;
SELF.v25_1 := L.v25_0; 
SELF.v25_0 := L.v25;
SELF.v26_2 := L.v26_1;
SELF.v26_1 := L.v26_0; 
SELF.v26_0 := L.v26;
SELF.v27_2 := L.v27_1;
SELF.v27_1 := L.v27_0; 
SELF.v27_0 := L.v27;
SELF.v28_2 := L.v28_1;
SELF.v28_1 := L.v28_0; 
SELF.v28_0 := L.v28;
SELF.Amount_2 := L.Amount_1;
SELF.Amount_1 := L.Amount_0;
SELF.Amount_0 := L.Amount;
SELF:=R;
END;

EXPORT CardsRandom := ITERATE(tet, AssignRandomValues(LEFT,RIGHT));

LayoutCardsExtended addNoise(CardsRandom L) := TRANSFORM
	SELF.V1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V1;
	SELF.V2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V2;
	SELF.V3:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V3;
	SELF.V4 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V4;
	SELF.V5:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V5;	
	SELF.V6:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V6;	
	SELF.V7:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V7;	
	SELF.V8:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V8;	
	SELF.V9:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V9;	
	SELF.V10:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V10;	
	SELF.V11:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V11;	
	SELF.V12:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V12;	
	SELF.V13:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V13;	
	SELF.V14:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V14;	
	SELF.V15:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V15;	
	SELF.V16:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V16;	
	SELF.V17:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V17;	
	SELF.V18:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V18;	
	SELF.V19:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V19;	
	SELF.V20:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V20;	
	SELF.V21:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V21;	
	SELF.V22:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V22;	
	SELF.V23:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V23;	
	SELF.V24:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V24;	
	SELF.V25:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V25;	
	SELF.V26:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V26;	
	SELF.V27:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V27;
	SELF.V28:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.V28;	
	SELF. Amount:= CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.Amount;
	SELF.v1_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v1_2;
	SELF.v1_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v1_1;
	SELF.v1_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v1_0;
	SELF.v2_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v2_2;
	SELF.v2_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v2_1;
	SELF.v2_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v2_0;
	SELF.v3_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v3_2;
	SELF.v3_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v3_1;
	SELF.v3_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v3_0;
	SELF.v4_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v4_2;
	SELF.v4_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v4_1;
	SELF.v4_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v4_0;
	SELF.v5_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v5_2;
	SELF.v5_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v5_1;
	SELF.v5_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v5_0;
	SELF.v6_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v6_2;
	SELF.v6_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v6_1;
	SELF.v6_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v6_0;
	SELF.v7_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v7_2;
	SELF.v7_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v7_1;
	SELF.v7_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v7_0;
	SELF.v8_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v8_2;
	SELF.v8_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v8_1;
	SELF.v8_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v8_0;
	SELF.v9_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v9_2;
	SELF.v9_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v9_1;
	SELF.v9_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v9_0;
	SELF.v10_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v10_2;
	SELF.v10_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v10_1;
	SELF.v10_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v10_0;
	SELF.v11_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v11_2;
	SELF.v11_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v11_1;
	SELF.v11_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v11_0;
	SELF.v12_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v12_2;
	SELF.v12_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v12_1;
	SELF.v12_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v12_0;
	SELF.v13_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v13_2;
	SELF.v13_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v13_1;
	SELF.v13_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v13_0;
	SELF.v14_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v14_2;
	SELF.v14_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v14_1;
	SELF.v14_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v14_0;
	SELF.v15_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v15_2;
	SELF.v15_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v15_1;
	SELF.v15_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v15_0;
	SELF.v16_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v16_2;
	SELF.v16_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v16_1;
	SELF.v16_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v16_0;
	SELF.v17_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v17_2;
	SELF.v17_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v17_1;
	SELF.v17_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v17_0;
	SELF.v18_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v18_2;
	SELF.v18_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v18_1;
	SELF.v18_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v18_0;
	SELF.v19_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v19_2;
	SELF.v19_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v19_1;
	SELF.v19_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v19_0;
	SELF.v20_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v20_2;
	SELF.v20_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v20_1;
	SELF.v20_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v20_0;
	SELF.v21_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v21_2;
	SELF.v21_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v21_1;
	SELF.v21_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v21_0;
	SELF.v22_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v22_2;
	SELF.v22_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v22_1;
	SELF.v22_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v22_0;
	SELF.v23_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v23_2;
	SELF.v23_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v23_1;
	SELF.v23_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v23_0;
	SELF.v24_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v24_2;
	SELF.v24_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v24_1;
	SELF.v24_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v24_0;
	SELF.v25_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v25_2;
	SELF.v25_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v25_1;
	SELF.v25_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v25_0;
	SELF.v26_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v26_2;
	SELF.v26_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v26_1;
	SELF.v26_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v26_0;
	SELF.v27_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v27_2;
	SELF.v27_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v27_1;
	SELF.v27_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v27_0;
	SELF.v28_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v28_2;
	SELF.v28_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v28_1;
	SELF.v28_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.v28_0;
	SELF.Amount_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.Amount_2;
	SELF.Amount_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.Amount_1;
	SELF.Amount_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.Amount_0;
	SELF := L;
END;

EXPORT CardsRandom1 := CardsRandom + CardsRandom(class_ = 1)+ CardsRandom(class_ = 1)+ CardsRandom(class_ = 1)+ CardsRandom(class_ = 1)+ CardsRandom(class_ = 1)+ CardsRandom(class_ = 1)+ CardsRandom(class_ = 1)+ CardsRandom(class_ = 1) + PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT));
//EXPORT CardsRandom1 := CardsRandom + CardsRandom(class = 1)+ CardsRandom(class = 1)+ CardsRandom(class = 1)+ CardsRandom(class = 1)+ CardsRandom(class = 1)+ CardsRandom(class = 1)+ CardsRandom(class = 1)+ CardsRandom(class = 1);
//EXPORT CardsRandomSort := SORT(CardsRandom,rnd);

EXPORT CardsRandomExtended:= RECORD(LayoutCardsExtended)
UNSIGNED rnd;
END;

CardsRandomUnSort:= PROJECT(CardsRandom1, TRANSFORM(CardsRandomExtended, SELF.rnd := RANDOM(), SELF := LEFT));
EXPORT CardsRandomSort := SORT(CardsRandomUnSort,rnd);

END;