clear all;

load('../dat/dataset.mat', 'G_X1');
load('../dat/dataset.mat', 'G_Y');

randshuffle();
indseq    = randperm(size(G_X1, 2));
b         = zeros(size(G_X1, 2), 1);
b(indseq) = seqcvlasso(G_X1(:, indseq), G_Y, 5000, 0.60);
save('all.mat', 'b');
exit;
