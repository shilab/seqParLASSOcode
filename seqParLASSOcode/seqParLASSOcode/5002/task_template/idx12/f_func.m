function y = f_func(b)
    global G_X;
    global G_Y;

    y = (norm(G_Y-G_X*b, 'fro'))^2;
end
