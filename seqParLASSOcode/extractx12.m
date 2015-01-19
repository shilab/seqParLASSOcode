function extractx12(taskid)
    bs = zeros(94588 + 467, 1);
    for roundi = 1:5
        load(['taskid_' num2str(taskid, '%03d') '_' num2str(roundi, '%03d') '/x12/all.mat']);
        bs([x1supp; x2supp], roundi) = b;
    end

    b = all(bs, 2);

    b1 = b([ true(94588, 1); false(467, 1)]);
    b2 = b([false(94588, 1);  true(467, 1)]);

    save(['all_' num2str(taskid, '%03d') '.mat'], 'b1', 'b2');
end
