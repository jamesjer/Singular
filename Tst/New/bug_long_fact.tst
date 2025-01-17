LIB "tst.lib"; tst_init();

  ring r=(0,t),(a(0..3)(0..3),b(0..3)(0..3),z),dp;
   poly P(0..3)(0..3),Q(0..3)(0..3);
   for (int i= 0;i<= 2;i++){
   P(i)(0)=a(i)(0)+a(i)(1)*z+a(i)(2)*z^2+a(i)(3)*z^3;
   Q(i)(0)=b(i)(0)+b(i)(1)*z+b(i)(2)*z^2+b(i)(3)*z^3;
   }

   for (int j= 0;j<= 2;j++){
   P(0)(j+1) =diff(P(0)(j), z) + (t*Q(1)(j)+2*P(0)(j))*P(1)(j);
   Q(0)(j+1) =diff(Q(0)(j), z) + (t*Q(1)(j)+2*P(0)(j))*Q(1)(j);

   P(1)(j+1)=diff(P(1)(j),z)+((t+1)*Q(2)(j)+P(1)(j))*P(1)(j)+((t+1)/t)*(t*Q(1)(j)+2*P(0)(j))*P(2)(j);
   Q(1)(j+1) =diff(Q(1)(j),z) +
   ((t+1)*Q(2)(j)+P(1)(j))*Q(1)(j)+(t+1)/t*(t*Q(1)(j)+2*P(0)(j))*Q(2)(j);

   P(2)(j+1) =diff(P(2)(j),z)+ 2*((t+1)*Q(2)(j)+P(1)(j))*P(2)(j);
   Q(2)(j+1) =diff(Q(2)(j), z)+ 2*((t+1)*Q(2)(j)+P(1)(j))*Q(2)(j);}

tst_status(1);$

