clear;  //Xóa dữ liệu các biến
clf();  //Xóa các đồ thị trước

n = -1:3;   
x1 = [0 0 1 3 -2];
x2 = [0 1 2 3 0];

y = x1 + x2;

subplot(3,1,1);
plot2d3(n,x1);
title("Tín hiệu x1(n)");
xlabel("n");
ylabel("x1(n)");

subplot(3,1,2);
plot2d3(n,x2);
title("Tín hiệu x2(n)");
xlabel("n");
ylabel("x2(n)");

subplot(3,1,3);
plot2d3(n,y);
title("Tín hiệu y(n) = x1(n) + x2(n)");
xlabel("n");
ylabel("y(n)");