clear;
clf();

Fs = 600;
T = 1/Fs;

// ====================================
// Tín hiệu analog ban đầu
// ====================================

t = 0:0.00001:0.02;

xa = sin(480*%pi*t) ...
   + 3*sin(720*%pi*t);


// ====================================
// Lấy mẫu
// ====================================

n = 0:15;

ts = n*T;

x = sin(480*%pi*ts) ...
  + 3*sin(720*%pi*ts);


// ====================================
// Tín hiệu rời rạc tương đương
// ====================================

x_n = -2*sin(0.8*%pi*n);


// ====================================
// Tín hiệu analog tái tạo
// ====================================

ya = -2*sin(480*%pi*t);


// ====================================
// Figure 1: Tín hiệu analog ban đầu
// ====================================

scf(1);
clf();

plot2d(t, xa);
xgrid();

title("Tín hiệu analog ban đầu xa(t)");
xlabel("Time t (s)");
ylabel("xa(t)");


// ====================================
// Figure 2: Tín hiệu rời rạc
// ====================================

scf(2);
clf();

plot2d3(n, x);
plot(n, x, 'o');
xgrid();

title("Tín hiệu rời rạc x(n)");
xlabel("n");
ylabel("x(n)");


// ====================================
// Figure 3: Tín hiệu rời rạc tương đương
// ====================================

scf(3);
clf();

subplot(2,1,1);

plot2d3(n, x);
plot(n, x, 'o');
xgrid();

title("Lấy mẫu tín hiệu rời rạc x(n)");
xlabel("n");
ylabel("x(n)");

subplot(2,1,2);

plot2d3(n, x_n);
plot(n, x_n, 'o');
xgrid();

title("Tín hiệu rời rạc tương đương -2sin(0.8*pi*n)");
xlabel("n");
ylabel("x(n)");


// ====================================
// Figure 4: Tín hiệu analog tái tạo
// ====================================

scf(4);
clf();

subplot(2,1,1);

plot2d(t, xa);
xgrid();

title("Tín hiệu analog ban đầu xa(t)");
xlabel("Time t (s)");
ylabel("xa(t)");

subplot(2,1,2);

plot2d(t, ya);
xgrid();

title("Tín hiệu analog tái tạo ya(t)");
xlabel("Time t (s)");
ylabel("ya(t)");


// ====================================
// Tính toán sai số giữa tín hiệu rời rạc và tín hiệu rời rạc tương đương
// ====================================

error = max(abs(x - x_n));

disp("Maximum error:");
disp(error);