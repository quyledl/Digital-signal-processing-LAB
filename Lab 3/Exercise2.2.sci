clc;
clear;

function y = xsig(n)

    y = zeros(1, length(n));

    // x(n) = 1 với -1 <= n <= 2
    id1 = find(n >= -1 & n <= 2);
    y(id1) = 1;

    // x(n) = 0.5 với 3 <= n <= 4
    id2 = find(n >= 3 & n <= 4);
    y(id2) = 0.5;

endfunction


// Vì x(n) được định nghĩa trong khoảng từ -1 đến 4, ta sẽ chọn n từ -7 đến 8 để bao phủ toàn bộ các phép biến đổi cần thiết.
n = -7:8;

// (a) x(n - 2)
ya = xsig(n - 2);

// (b) x(4 - n)
yb = xsig(4 - n);

// (c) x(n + 2)
yc = xsig(n + 2);

// (d) x(n)u(2-n)
// u(2-n) = 1 khi n <= 2
u2 = zeros(1, length(n));
u2(find(n <= 2)) = 1;

yd = xsig(n) .* u2;


// (e) x(n-1) delta(n-3)
delta3 = zeros(1, length(n));
delta3(find(n == 3)) = 1;

ye = xsig(n - 1) .* delta3;

// (f) x(n^2)
yf = xsig(n.^2);

// (g) Phần chẵn
// xe(n) = 1/2 [x(n) + x(-n)]
yg = 0.5 * (xsig(n) + xsig(-n));


// (h) Phần lẻ
// xo(n) = 1/2 [x(n) - x(-n)]
yh = 0.5 * (xsig(n) - xsig(-n));


// FIGURE 1: (a) - (d)
scf(1);
clf();

subplot(2,2,1);
plot2d3(n, ya);
xgrid();
xtitle("(a) x(n-2)", "n", "Biên độ");

subplot(2,2,2);
plot2d3(n, yb);
xgrid();
xtitle("(b) x(4-n)", "n", "Biên độ");

subplot(2,2,3);
plot2d3(n, yc);
xgrid();
xtitle("(c) x(n+2)", "n", "Biên độ");

subplot(2,2,4);
plot2d3(n, yd);
xgrid();
xtitle("(d) x(n)u(2-n)", "n", "Biên độ");


// ==========================================
// FIGURE 2: (e) - (h)
// ==========================================
scf(2);
clf();

subplot(2,2,1);
plot2d3(n, ye);
xgrid();
xtitle("(e) x(n-1)delta(n-3)", "n", "Biên độ");

subplot(2,2,2);
plot2d3(n, yf);
xgrid();
xtitle("(f) x(n^2)", "n", "Biên độ");

subplot(2,2,3);
plot2d3(n, yg);
xgrid();
xtitle("(g) Phần chẵn của x(n)", "n", "Biên độ");

subplot(2,2,4);
plot2d3(n, yh);
xgrid();
xtitle("(h) Phần lẻ của x(n)", "n", "Biên độ");