function mkidx12dat()
    global G_UX1;
    global G_SX2;

    load('../x12/all.mat', 'b');
    load('../x12/all.mat', 'suppx1');
    load('../x12/all.mat', 'suppx2');
    load('../dat/dataset.mat', 'G_X1');
    load('../dat/dataset.mat', 'G_X2');

    suppx        = [suppx1; suppx2];
    suppx(suppx) = all(b, 2);

    x12suppx1 = suppx([true(size(suppx1)); false(size(suppx2))]);
    x12suppx2 = suppx([false(size(suppx1)); true(size(suppx2))]);

    G_UX1 = G_X1(:, ~x12suppx1);
    G_SX2 = G_X2(:,  x12suppx2);

    save('inndata.mat', 'x12suppx1', 'x12suppx2', 'G_UX1', 'G_SX2');
end
