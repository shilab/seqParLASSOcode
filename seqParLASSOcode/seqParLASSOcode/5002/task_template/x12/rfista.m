function [b n] = rfista(initb, maxflip)
    X  = initb;
    oX = X;

    v  = nfg_func(initb);
    ov = v;

    t  = 1;
    ot = t;

    Y  = X;
    n  = 0;

    flipset = true(maxflip, 1);

    while true
        n  = n + 1;

        oX = X;
        X  = pl_func(Y);

        ov = v;
        v  = nfg_func(X);

        % disp(['n = ' num2str(n, '%.5e') '  ' ...
        %     'dx = ' num2str(norm(oX-X, 1), '%.5e') '   ' ...
        %     'df = ' num2str(ov-v, '%.5e') '   ' ...
        %     'ds = ' num2str(sum(xor(oX, X)), '%.5e') '   ']); 

        flipset(rem(n-1, maxflip)+1) = any(xor(oX, X));

        if (abs(v - ov) < 5e-8) && (~any(flipset))
            break;
        end

        if v > ov
            t = 1;
            Y = X;
            continue;
        end

        ot = t;
        t  = (1+sqrt(1+4*ot*ot))/2;
        Y  = X + ((ot-1)/t)*(X - oX);
    end
    b = X;
end
