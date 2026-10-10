function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)

    lx = length(xn);
    lh = length(hn);

    // do dai cua convolution
    ly = lx + lh - 1;

    // khoi tao output
    yn = zeros(1, ly);

    // convolution
    for i = 1:lx
        for j = 1:lh
            yn(i+j-1) = yn(i+j-1) + xn(i)*hn(j);
        end
    end

    // vi tri n = 0 cua output
    yorigin = xorigin + horigin - 1;

    // truc n
    nx = (1:lx) - xorigin;
    nh = (1:lh) - horigin;
    ny = (1:ly) - yorigin;

    clf();

    subplot(3,1,1);
    plot2d3(nx, xn);
    plot2d(nx, xn, style=-4);
    title("x(n)");
    xlabel("n");
    ylabel("x(n)");
    xgrid();

    subplot(3,1,2);
    plot2d3(nh, hn);
    plot2d(nh, hn, style=-4);
    title("h(n)");
    xlabel("n");
    ylabel("h(n)");
    xgrid();

    subplot(3,1,3);
    plot2d3(ny, yn);
    plot2d(ny, yn, style=-4);
    title("y(n) = x(n) * h(n)");
    xlabel("n");
    ylabel("y(n)");
    xgrid();

endfunction
