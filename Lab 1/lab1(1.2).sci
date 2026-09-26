clear;
clc;
clf();

// Cau 1
f0 = 50;
T0 = 1/f0;
t = 0:0.000001:5*T0;
xa = 3*sin(100*%pi*t);

subplot(3,1,1);
plot(t, xa);
xlabel("t (s)");
ylabel("xa(t)");
xgrid();

// Cau 2:
n = 0:29;
xn = 3*sin(%pi*n/3);

subplot(3,1,2);
plot2d(n, xn, style=-4);
xlabel("n");
ylabel("x[n]");
xgrid();

// Cau 3:
delta = 0.1;
xq = delta*fix(xn/delta);

subplot(3,1,3);
plot2d(n, xq, style=-4);
xlabel("n");
ylabel("xq[n]");
xgrid();
