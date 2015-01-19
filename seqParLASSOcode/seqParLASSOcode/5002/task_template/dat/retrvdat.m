function retrvdat(taskid)
    load('../../../9999_n38tag/snptagsetall.mat', 'FSNPTAGSET');
    load('../../../9999_n38tag/snptagsetall.mat', 'STDSNPTAGSETX');
    load('../../../9999_n38tag/snptagsetall.mat', 'STDMETHYLATION');
    load('../../../9999_n38tag/snptagsetall.mat', 'STDGENEXP');

    G_TASKID = taskid;

    G_X1 = STDSNPTAGSETX(:, FSNPTAGSET);
    G_X2 = STDMETHYLATION;
    G_Y  = STDGENEXP(:, G_TASKID);

    G_P1 = size(G_X1, 2);
    G_P2 = size(G_X2, 2);
    G_N  = size(G_Y, 1);
    G_K  = 1;

    save('./dataset.mat', 'G_X1', 'G_X2', 'G_Y', 'G_TASKID', 'G_P1', 'G_P2', 'G_N', 'G_K');
end
