clear;
clf();

Fs = 1000;
Ts = 1/Fs;

// Chỉ số mẫu
n = 0:20;

// Tín hiệu lấy mẫu trực tiếp từ tín hiệu analog
x = 3*cos(600*%pi*n*Ts) ...
  + 2*cos(1800*%pi*n*Ts);

// Tín hiệu tương đương sau aliasing
x_alias = 3*cos(0.6*%pi*n) ...
        + 2*cos(0.2*%pi*n);

// Vẽ tín hiệu lấy mẫu
subplot(2,1,1);
plot2d3(n,x);
plot(n,x,'o');
xgrid();

title("Tín hiệu lấy mẫu x(n)");
xlabel("n");
ylabel("x(n)");

// Vẽ tín hiệu tương đương
subplot(2,1,2);
plot2d3(n,x_alias);
plot(n,x_alias,'o');
xgrid();

title("Tín hiệu tương đương sau aliasing");
xlabel("n");
ylabel("x(n)");