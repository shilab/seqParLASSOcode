function mkdat(X, Y)
    global G_P;
    global G_K;

    global G_XX;
    global G_YY;
    global G_NN;

    G_P  = size(X, 2);
    G_K  = size(Y, 2);

    G_XX = X;
    G_YY = Y;

    G_NN = size(G_XX, 1);
end
