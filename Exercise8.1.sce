clear();
clf();

n = -2:1;
x = [1 -2 3 6];

n1 = -n($:-1:1);
y1 = x($:-1:1);

subplot(2,1,1);
plot2d3(n,x);
plot(n, x, '*');
title("Original signal x(n)");
xlabel("n");
ylabel("x(n)");

subplot(2,1,2);
plot2d3(n1,y1);
plot(n1, y1, '*');
title("y1(n) = x(-n)");
xlabel("n");
ylabel("y1(n)");