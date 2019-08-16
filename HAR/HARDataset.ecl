EXPORT HARDataset := MODULE

SHARED trainSize := 9984;
SHARED testSize := 1000;

EXPORT Layout := RECORD
UNSIGNED8 id;
DECIMAL5_4 one_0;
DECIMAL5_4 two_0;
DECIMAL5_4 three_0;
DECIMAL5_4 four_0;
DECIMAL5_4 five_0;
DECIMAL5_4 six_0;
DECIMAL5_4 seven_0;
DECIMAL5_4 eight_0;
DECIMAL5_4 nine_0;
DECIMAL5_4 one_1;
DECIMAL5_4 two_1;
DECIMAL5_4 three_1;
DECIMAL5_4 four_1;
DECIMAL5_4 five_1;
DECIMAL5_4 six_1;
DECIMAL5_4 seven_1;
DECIMAL5_4 eight_1;
DECIMAL5_4 nine_1;
DECIMAL5_4 one_2;
DECIMAL5_4 two_2;
DECIMAL5_4 three_2;
DECIMAL5_4 four_2;
DECIMAL5_4 five_2;
DECIMAL5_4 six_2;
DECIMAL5_4 seven_2;
DECIMAL5_4 eight_2;
DECIMAL5_4 nine_2;
DECIMAL5_4 one_3;
DECIMAL5_4 two_3;
DECIMAL5_4 three_3;
DECIMAL5_4 four_3;
DECIMAL5_4 five_3;
DECIMAL5_4 six_3;
DECIMAL5_4 seven_3;
DECIMAL5_4 eight_3;
DECIMAL5_4 nine_3;
DECIMAL5_4 one_4;
DECIMAL5_4 two_4;
DECIMAL5_4 three_4;
DECIMAL5_4 four_4;
DECIMAL5_4 five_4;
DECIMAL5_4 six_4;
DECIMAL5_4 seven_4;
DECIMAL5_4 eight_4;
DECIMAL5_4 nine_4;
DECIMAL5_4 one_5;
DECIMAL5_4 two_5;
DECIMAL5_4 three_5;
DECIMAL5_4 four_5;
DECIMAL5_4 five_5;
DECIMAL5_4 six_5;
DECIMAL5_4 seven_5;
DECIMAL5_4 eight_5;
DECIMAL5_4 nine_5;
DECIMAL5_4 one_6;
DECIMAL5_4 two_6;
DECIMAL5_4 three_6;
DECIMAL5_4 four_6;
DECIMAL5_4 five_6;
DECIMAL5_4 six_6;
DECIMAL5_4 seven_6;
DECIMAL5_4 eight_6;
DECIMAL5_4 nine_6;
DECIMAL5_4 one_7;
DECIMAL5_4 two_7;
DECIMAL5_4 three_7;
DECIMAL5_4 four_7;
DECIMAL5_4 five_7;
DECIMAL5_4 six_7;
DECIMAL5_4 seven_7;
DECIMAL5_4 eight_7;
DECIMAL5_4 nine_7;
REAL4 class_;
END;

SHARED RandomExtended:= RECORD(Layout)
UNSIGNED rnd;
END;

EXPORT train_0 := DATASET('~.::hartrain.csv',Layout,CSV(heading(0),separator(',')));
EXPORT train_01 := train_0;
//EXPORT train_0 := DATASET('~ akshar::htrain::out1.csv',Layout,CSV(heading(0),separator(',')));

EXPORT train_1:= PROJECT(train_01, TRANSFORM(RandomExtended, SELF.rnd := RANDOM(), SELF := LEFT));
train_2 := SORT(train_1,rnd);
EXPORT train := PROJECT(train_2, Layout);  

EXPORT test_0 := DATASET('~.::hartest.csv',Layout,CSV(heading(0),separator(',')));
EXPORT test_01 := test_0;

test_1:= PROJECT(test_01, TRANSFORM(RandomExtended, SELF.rnd := RANDOM(), SELF := LEFT));
test_2 := SORT(test_1,rnd);
EXPORT test := PROJECT(test_2, Layout); 

END;
