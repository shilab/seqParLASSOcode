function calcidx12()
    global G_UX1;
    global G_SX2;

    feat_cnt = size(G_UX1, 2);
    task_cnt = size(G_SX2, 2);
    suppset  = false(feat_cnt, task_cnt);
    roundn   = 10;

    for task_id = 1:task_cnt
        suppset(:, task_id) = multiround(G_UX1, G_SX2(:, task_id), roundn);
        save('all.mat', 'suppset', 'feat_cnt', 'task_cnt', 'task_id');
    end
end
