function mkcvdat(sample_DINDEX)
    global G_XX;
    global G_YY;
    global G_NN;

    global G_X;
    global G_Y;
    global G_N;

    global G_X_TEST;
    global G_Y_TEST;
    global G_N_TEST;


    index         = 1:G_NN;
    dindex        = sample_DINDEX;
    index(dindex) = [];

    G_X      = G_XX(index, :);
    G_Y      = G_YY(index, :);
    G_N      = length(index);

    G_X_TEST = G_XX(dindex,:);
    G_Y_TEST = G_YY(dindex,:);
    G_N_TEST = length(dindex);

    G_X      = G_X - repmat(mean(G_X, 1), G_N, 1);
    G_Y      = G_Y - repmat(mean(G_Y, 1), G_N, 1);

    G_X_TEST = G_X_TEST - repmat(mean(G_X_TEST, 1), G_N_TEST, 1);
    G_Y_TEST = G_Y_TEST - repmat(mean(G_Y_TEST, 1), G_N_TEST, 1);
end
