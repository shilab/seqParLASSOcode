function [X12 Y] = mkx12(suppx1, suppx2)
    load('../dat/dataset.mat', 'G_X1');
    load('../dat/dataset.mat', 'G_X2');
    load('../dat/dataset.mat', 'G_Y');

    X     = [G_X1 G_X2];
    suppx = [suppx1; suppx2];
    X12   = X(:, suppx);
    Y     = G_Y;
end
