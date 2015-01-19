function getl()
    global G_L;
    global G_X_T_M_X;

    G_L = abs(eigs(2*G_X_T_M_X, 1, 'lm'));
end
