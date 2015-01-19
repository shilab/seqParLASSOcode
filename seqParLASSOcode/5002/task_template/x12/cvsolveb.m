function optb = cvsolveb(X, Y)
    lmdmin = 0.001;
    lmdmax = 1.500;
    lmdcnt = 20;
    lmdn   = lmdmax*(((0:round(lmdcnt-1))/round(lmdcnt-1)).^2)+lmdmin;

    CVIDX = 1:size(X, 1);
    bpt1  = round(size(X, 1) * 1 / 3);
    bpt2  = round(size(X, 1) * 2 / 3);
    CVI   = [1 bpt1; (bpt1 + 1) bpt2; (bpt2 + 1) size(X, 1)];

    mkdat(X, Y);

    tste = zeros(length(lmdn), size(CVI, 1));

    for cvk = 1:size(CVI, 1)
        cvstart = CVI(cvk, 1);
        cvend   = CVI(cvk, 2);

        mkcvdat(CVIDX(cvstart:cvend));
        glb_init();

        initb = zeros(size(X, 2), 1);
        for lmdi = 1:length(lmdn)
            b               = solveb(lmdn(lmdi), initb);
            initb           = b;
            tste(lmdi, cvk) = test_err(b);
        end
    end

    atste      = mean(tste, 2);
    [dumb idx] = min(atste);
    optb       = resolveb(lmdn(idx), zeros(size(X, 2), 1));
end
