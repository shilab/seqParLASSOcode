function supp = genx2supp()
    load('../x2/all.mat', 'b');
    supp = all(b, 2);
end
