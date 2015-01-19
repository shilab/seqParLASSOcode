function b = resolveb(lmd, initb)
    global G_X;
    global G_Y;
    global G_N;

    global G_XX;
    global G_YY;
    global G_NN;

    global G_LAMBDA;

    G_X      = G_XX;
    G_Y      = G_YY;
    G_N      = G_NN;

    G_LAMBDA = G_NN * lmd;

    glb_init();

    b = rfista(initb, 20);
    % b = fista(initb);
end
