x1n = [0 1 3 -2];
x2n = [1 1 2 3];

x1origin = 1;
x2origin = 2;


function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    nmin = min([n1 n2]);
    nmax = max([n1 n2]);

    n = nmin:nmax;
    x1 = zeros(1, length(n));
    x2 = zeros(1, length(n));
    i1 = n1 - nmin + 1;
    i2 = n2 - nmin + 1;
    x1(i1) = x1n;
    x2(i2) = x2n;
    yn = x1 .* x2;
    yorigin = 1 - nmin;

endfunction

[yn, yorigin] = multi(x1n, x1origin, x2n, x2origin);
disp("yn = ");
disp(yn);

disp("yorigin = ");
disp(yorigin);

n1 = (1:length(x1n)) - x1origin;
n2 = (1:length(x2n)) - x2origin;
ny = (1:length(yn)) - yorigin;

clf();

subplot(3,1,1);
plot2d3(n1, x1n);
plot(n1, x1n, "ro");
xgrid();
xtitle("Tin hieu x1(n)", "n", "x1(n)");

subplot(3,1,2);
plot2d3(n2, x2n);
plot(n2, x2n, "bo");
xgrid();
xtitle("Tin hieu x2(n)", "n", "x2(n)");

subplot(3,1,3);
plot2d3(ny, yn);
plot(ny, yn, "go");
xgrid();
xtitle("y(n) = x1(n) .* x2(n)", "n", "y(n)");