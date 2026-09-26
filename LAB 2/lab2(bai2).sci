clear;
clc;
clf();

n = -5:5;
msignal = bool2s(n >= 0);

plot2d3(n, msignal);
plot(n, msignal, "o");

title("Unit Step Signal msignal[n]");
xlabel("n");
ylabel("msignal[n]");
xgrid();
