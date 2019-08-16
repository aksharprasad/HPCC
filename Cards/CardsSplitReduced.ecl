IMPORT Cards.CardsDataset as C;

EXPORT CardsSplitReduced := MODULE

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
	SELF.Amount_2 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.Amount_2;
	SELF.Amount_1 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.Amount_1;
	SELF.Amount_0 := CHOOSE((RANDOM()%3)+1,0.9,1,1.1)*L.Amount_0;
	SELF := L;
END;

EXPORT CardsRandom1 := CardsRandom + CardsRandom(class_ = 1)+ CardsRandom(class_ = 1)+ CardsRandom(class_ = 1)+ CardsRandom(class_ = 1)+ CardsRandom(class_ = 1)+ CardsRandom(class_ = 1)+ CardsRandom(class_ = 1)+ CardsRandom(class_ = 1) + PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT))+ PROJECT(CardsRandom(class_ = 1),addNoise(LEFT));
//EXPORT CardsRandomSort := SORT(CardsRandom,rnd);

SHARED CardsRandomExtended:= RECORD(LayoutCardsExtended)
UNSIGNED rnd;
END;

CardsRandomUnSort:= PROJECT(CardsRandom1, TRANSFORM(CardsRandomExtended, SELF.rnd := RANDOM(), SELF := LEFT));
EXPORT CardsRandomSort := SORT(CardsRandomUnSort,rnd);

END;
