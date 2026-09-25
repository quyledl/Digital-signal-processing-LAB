clear;
clf();

Tp = 1;
N = 4;
k = 1;

T = k*Tp/N;

n = 0:15;

x = cos(2*%pi*n*T/Tp);

plot2d3(n, x);
title("Tín hiệu rời rạc x(n)");
xlabel("n");
ylabel("x(n)");