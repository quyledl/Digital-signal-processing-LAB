function [yn, yorigin] = delay(xn, xorigin, k)

    yn = xn;
    yorigin = xorigin - k;

    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;

    clf();

    subplot(2,1,1);
    plot2d3(nx, xn);
    plot2d(nx, xn, style=-4);
    title("x(n)");
    xlabel("n");
    ylabel("x(n)");
    xgrid();

    subplot(2,1,2);
    plot2d3(ny, yn);
    plot2d(ny, yn, style=-4);
    title("y(n) = x(n-k)");
    xlabel("n");
    ylabel("y(n)");
    xgrid();

endfunction
