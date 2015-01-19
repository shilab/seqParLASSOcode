function df = df_func(X)
    global G_X_T_M_X;
    global G_X_T_M_Y;

    df = 2*G_X_T_M_X*X - 2*G_X_T_M_Y;
end
