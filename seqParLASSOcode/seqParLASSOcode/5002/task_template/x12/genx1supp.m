function supp = genx1supp()
    load('../x1/all.mat', 'b');
    supp = all(b, 2);
end
