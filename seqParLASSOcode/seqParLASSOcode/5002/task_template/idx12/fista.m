function b = fista(initb)
    X  = initb;
    oX = X;
    Y  = X;
    t  = 1;
    ot = t;

    while true
        oX = X;
        X  = pl_func(Y);

        ot = t;
        t  = (1+sqrt(1+4*ot*ot))/2;

        Y    = X + ((ot-1)/t)*(X - oX);
        errx = norm(X - oX, 'fro');

        if (errx < 1e-5)
            break;
        end
    end
    b = X;
end
