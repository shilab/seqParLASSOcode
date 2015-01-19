function nfg = nfg_func(X)
    global G_N;
    nfg = fg_func(X) / G_N;
end