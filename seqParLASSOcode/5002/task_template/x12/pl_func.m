function Z = pl_func(Y)
    global G_LAMBDA;
    global G_L;

    R = Y - df_func(Y)/G_L;
    T = abs(R) - G_LAMBDA/G_L;
    Z = T.*(T>0).*sign(R);
end
