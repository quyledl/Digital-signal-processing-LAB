clear();
clf();

n = -2:1;
x = [1 -2 3 6];

n3 = -n($:-1:1) - 2;
y3 = 2 .* x($:-1:1);

subplot(2,1,1);
plot2d3(n,x);
plot(n, x, '*');
title("Tín hiệu ban đầu x(n)");
xlabel("n");
ylabel("x(n)");

subplot(2,1,2);
plot2d3(n3,y3);
plot(n3, y3, '*' );
title("y3(n) = 2x(-n-2)");
xlabel("n");
ylabel("y3(n)");