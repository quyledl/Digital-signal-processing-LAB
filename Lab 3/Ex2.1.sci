clear;
clc;
clf();

// EXERCISE 2.1

// Tín hiệu ban đầu:
// n = -3, -2, -1, 0, 1, 2, 3
// x =  0, 1/3, 2/3, 1, 1, 1, 1

xn = [0, 1/3, 2/3, 1, 1, 1, 1];
nx = -3:3;
// (a) Vẽ tín hiệu x(n)

scf(0);
clf();

plot2d3(nx, xn);

xlabel("n");
ylabel("x(n)");
title("Exercise 2.1(a) - Signal x(n)");
xgrid();

// (b1) Fold x(n) trước, sau đó delay 4 mẫu


// Fold: x(n) -> x(-n)
x_fold = xn($:-1:1);
n_fold = -3:3;

// Delay 4 mẫu:
// x(-n) -> x(-(n-4)) = x(-n+4)
y1 = x_fold;
n_y1 = n_fold + 4;

scf(1);
clf();

plot2d3(n_y1, y1);

xlabel("n");
ylabel("y1(n)");
title("Exercise 2.1(b1) - Fold then Delay 4 samples");
xgrid();



// (b2) Delay x(n) 4 mẫu trước, sau đó fold

// Delay 4:
// x(n) -> x(n-4)
x_delay = xn;
n_delay = nx + 4;

// Fold tín hiệu vừa delay
y2 = x_delay($:-1:1);
n_y2 = -n_delay($:-1:1);

scf(2);
clf();

plot2d3(n_y2, y2);

xlabel("n");
ylabel("y2(n)");
title("Exercise 2.1(b2) - Delay 4 samples then Fold");
xgrid();

// (c) Vẽ x(-n+4)

// x(-n+4) chính là kết quả:
// Fold trước -> Delay 4

xc = x_fold;
nc = n_fold + 4;

scf(3);
clf();

plot2d3(nc, xc);

xlabel("n");
ylabel("x(-n+4)");
title("Exercise 2.1(c) - Signal x(-n+4)");
xgrid();

// (d) So sánh kết quả

disp("Ket qua cau (b1): Fold truoc, Delay sau");
disp(y1);
disp(n_y1);

disp("Ket qua cau (b2): Delay truoc, Fold sau");
disp(y2);
disp(n_y2);

disp("Ket qua cau (c): x(-n+4)");
disp(xc);
disp(nc);

// (e) Biểu diễn x(n) bằng delta(n) và u(n)

// Chọn miền n rộng hơn để nhìn rõ tín hiệu
ne = -5:6;

// delta(n+2): bằng 1 tại n = -2
delta_n2 = bool2s(ne == -2);

// delta(n+1): bằng 1 tại n = -1
delta_n1 = bool2s(ne == -1);

// u(n)
u_n = bool2s(ne >= 0);

// u(n-4)
u_n4 = bool2s(ne >= 4);

// x(n) = 1/3 delta(n+2)
//      + 2/3 delta(n+1)
//      + u(n) - u(n-4)

xe = (1/3)*delta_n2 ...
   + (2/3)*delta_n1 ...
   + u_n ...
   - u_n4;

scf(4);
clf();

plot2d3(ne, xe);

xlabel("n");
ylabel("x(n)");
title("Exercise 2.1(e) - x(n) using delta(n) and u(n)");
xgrid();
