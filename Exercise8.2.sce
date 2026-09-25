clear();
clf();

n = -2:1;
x = [1 -2 3 6];

n2 = n - 3;

subplot(2,1,1);
plot2d3(n,x);
plot(n, x, '*');
title("Original signal x(n)");
xlabel("n");
ylabel("x(n)");

subplot(2,1,2);
plot2d3(n2,x);
plot(n2, x, '*');
title("y2(n) = x(n+3)");
xlabel("n");
ylabel("y2(n)");