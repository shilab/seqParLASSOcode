function b = solveb(lmd, initb)
    global G_N;
    global G_LAMBDA;

    G_LAMBDA = G_N * lmd;
    b        = rfista(initb, 20);
    % b        = fista(initb);
end
