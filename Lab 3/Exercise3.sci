
xn = [3 1 2 5 6 -2]
xorigin = 3

function [yn,yorigin] = fold(xn,xorigin)
    yorigin = length(xn) - xorigin + 1
    for i = 1:length(xn)
        yn(i) = xn(length(xn) - i + 1)
    end
endfunction
[yn, yorigin] = fold(xn, xorigin);
disp("yn=");
disp(yn);
disp("yorigin=");
disp(yorigin);
nx = (1:length(xn)) - xorigin;
ny = (1:length(yn)) - yorigin;
subplot(2,1,1);
plot2d3(nx, xn);
plot(nx, xn, "ro");
xgrid();
xtitle("Tín hiệu ban đầu x(n)", "n", "x(n)");

subplot(2,1,2);
plot2d3(ny, yn);
plot(ny, yn, "bo");
xgrid();
xtitle("Tín hiệu fold y(n) = x(-n)", "n", "y(n)");