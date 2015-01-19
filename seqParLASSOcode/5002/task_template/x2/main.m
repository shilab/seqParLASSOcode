clear all;

load('../dat/dataset.mat', 'G_X2');
load('../dat/dataset.mat', 'G_Y');

b = cvsolveb(G_X2, G_Y);
save('all.mat', 'b');
