clear all;

x1supp = genx1supp();
x2supp = genx2supp();

[X12 Y] = mkx12(x1supp, x2supp);
b       = cvsolveb(X12, Y);
save('all.mat', 'b', 'x1supp', 'x2supp');
exit;
