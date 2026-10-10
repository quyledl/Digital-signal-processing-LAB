
clear;
clc;

// Bai 2.6 - Kiem tra Time Invariant

// Tin hieu x[n] = 1 voi n tu 0 den 3
function a = X(t)
    a = bool2s((t >= 0) & (t <= 3));
endfunction

// Ham ve tin hieu
function ve(n, a, ten)
    plot2d3(n, a);
    plot2d(n, a, style=-4);
    xgrid();
    xtitle(ten, "n", "Gia tri");
endfunction

n = -5:9;

x = X(n);
x2 = X(n-2);


// ===== Cau b: y[n] = x[n^2] =====

y_b = X(n.^2);
y_b_dich = X((n-2).^2);
y2_b = X(n.^2-2);

scf(1);
clf();

subplot(3,2,1); ve(n, x, "b1: x[n]");
subplot(3,2,2); ve(n, y_b, "b2: y[n]");
subplot(3,2,3); ve(n, y_b_dich, "b3: y[n-2]");
subplot(3,2,4); ve(n, x2, "b4: x[n-2]");
subplot(3,2,5); ve(n, y2_b, "b5: T{x[n-2]}");
subplot(3,2,6); ve(n, y2_b-y_b_dich, "b6: Hieu");


// ===== Cau c: y[n] = x[n] - x[n-1] =====

y_c = X(n) - X(n-1);
y_c_dich = X(n-2) - X(n-3);
y2_c = x2 - X(n-3);

scf(2);
clf();

subplot(3,2,1); ve(n, x, "c1: x[n]");
subplot(3,2,2); ve(n, y_c, "c2: y[n]");
subplot(3,2,3); ve(n, y_c_dich, "c3: y[n-2]");
subplot(3,2,4); ve(n, x2, "c4: x[n-2]");
subplot(3,2,5); ve(n, y2_c, "c5: T{x[n-2]}");
subplot(3,2,6); ve(n, y2_c-y_c_dich, "c6: Hieu");


// ===== Cau d: y[n] = n*x[n] =====

y_d = n .* X(n);
y_d_dich = (n-2) .* X(n-2);
y2_d = n .* x2;

scf(3);
clf();

subplot(3,2,1); ve(n, x, "d1: x[n]");
subplot(3,2,2); ve(n, y_d, "d2: y[n]");
subplot(3,2,3); ve(n, y_d_dich, "d3: y[n-2]");
subplot(3,2,4); ve(n, x2, "d4: x[n-2]");
subplot(3,2,5); ve(n, y2_d, "d5: T{x[n-2]}");
subplot(3,2,6); ve(n, y2_d-y_d_dich, "d6: Hieu");


// So sanh ket qua
mprintf("Cau b: %d\n", and(y2_b == y_b_dich));
mprintf("Cau c: %d\n", and(y2_c == y_c_dich));
mprintf("Cau d: %d\n", and(y2_d == y_d_dich));
