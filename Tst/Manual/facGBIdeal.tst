LIB "tst.lib"; tst_init();
LIB "pointid.lib";
ring R = 0,x(1..3),ip;
vector a1 = [4,0,0];
vector a2 = [2,1,4];
vector a3 = [2,4,0];
vector a4 = [3,0,1];
vector a5 = [2,1,3];
vector a6 = [1,3,4];
vector a7 = [2,4,3];
vector a8 = [2,4,2];
vector a9 = [1,0,2];
list A = a1,a2,a3,a4,a5,a6,a7,a8,a9;
facGBIdeal(A);
matrix MAT[9][3] = 4,0,0,2,1,4,2,4,0,3,0,1,2,1,3,1,3,4,2,4,3,2,4,2,1,0,2;
MAT = transpose(MAT);
print(MAT);
facGBIdeal(MAT);
module MOD = gen(3),gen(2)-2*gen(3),2*gen(1)+2*gen(3),2*gen(2)-2*gen(3),gen(1)+3*gen(3),gen(1)+gen(2)+3*gen(3),gen(1)+gen(2)+gen(3);
print(MOD);
facGBIdeal(MOD);
list l1 = 0,0,1;
list l2 = 0,1,-2;
list l3 = 2,0,2;
list l4 = 0,2,-2;
list l5 = 1,0,3;
list l6 = 1,1,3;
list L = l1,l2,l3,l4,l5,l6;
facGBIdeal(L);
tst_status(1);$
