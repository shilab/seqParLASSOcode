function err = test_err(b)
    global G_X_TEST;
    global G_Y_TEST;
    global G_N_TEST;

    E   = G_Y_TEST - G_X_TEST * b;
    E   = E - repmat(mean(E, 1), G_N_TEST, 1);
    err = norm(E, 'fro')^2 / G_N_TEST;
end
