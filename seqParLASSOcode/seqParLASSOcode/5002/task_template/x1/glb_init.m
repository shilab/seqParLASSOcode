function glb_init()
    global G_X;
    global G_Y;

    global G_X_T_M_X;
    global G_X_T_M_Y;


    G_X_T_M_X = G_X'*G_X;
    G_X_T_M_Y = G_X'*G_Y;

    getl();
end
