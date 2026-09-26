clear;
clc;
clf();

n = -1:1;
x = [1 3 -2];

x_flip = x($:-1:1);

xe = (x + x_flip)/2;
xo = (x - x_flip)/2;


// x[n]
subplot(3,1,1);
plot2d3(n, x, rect=[-1.5,-2.5,1.5,3.5]);
plot2d(n, x, style=-4);
title("Original Signal x[n]");
xlabel("n");
ylabel("x[n]");
xgrid();


// xe[n]
subplot(3,1,2);
plot2d3(n, xe, rect=[-1.5,-1,1.5,3.5]);
plot2d(n, xe, style=-4);
title("Even Component xe[n]");
xlabel("n");
ylabel("xe[n]");
xgrid();


// xo[n]
subplot(3,1,3);
plot2d3(n, xo, rect=[-1.5,-2,1.5,2]);
plot2d(n, xo, style=-4);
title("Odd Component xo[n]");
xlabel("n");
ylabel("xo[n]");
xgrid();
