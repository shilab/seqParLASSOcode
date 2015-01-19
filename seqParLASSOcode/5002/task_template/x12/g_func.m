function y = g_func(X)
    global G_LAMBDA;
    y = G_LAMBDA * norm(X(:), 1);
end
