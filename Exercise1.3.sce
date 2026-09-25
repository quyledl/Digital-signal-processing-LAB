clear;
clf();

// ===== (a) Continuous-time =====
t = 0:0.001:3;
xa = 3*cos(5*t + %pi/6);

scf(1);
plot2d(t, xa);
title("1.3(a) xa(t)");
xlabel("t");
ylabel("xa(t)");


// ===== (b) =====
n = 0:30;
xb = 3*cos(5*n + %pi/6);

scf(2);
plot2d3(n, xb);
title("1.3(b) x(n)");
xlabel("n");
ylabel("x(n)");


// ===== (c) =====
xc = 2*exp(%i*(n/6 - %pi));

scf(3);
plot2d3(n, real(xc));
title("1.3(c) Real part of x(n)");
xlabel("n");
ylabel("Re{x(n)}");


// ===== (d) =====
xd = cos(n/8).*cos(%pi*n/8);

scf(4);
plot2d3(n, xd);
title("1.3(d) x(n)");
xlabel("n");
ylabel("x(n)");


// ===== (e) =====
n = 0:31;

xe = cos(%pi*n/2) ...
     - sin(%pi*n/8) ...
     + 3*cos(%pi*n/4 + %pi/3);

scf(5);
plot2d3(n, xe);
title("1.3(e) Periodic signal");
xlabel("n");
ylabel("x(n)");