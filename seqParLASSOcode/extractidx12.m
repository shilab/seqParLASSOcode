function extractidx12(taskid)
    bsn = [];
    for roundi = 1:5
        load(['taskid_' num2str(taskid, '%03d') '_idx12_' num2str(roundi, '%03d') '/all.mat'], 'bs');
        bsn(:, :, roundi) = bs;
    end

    load(['all_' num2str(taskid, '%03d') '.mat'], 'b1');
    bs         = false(length(b1), size(bsn, 2));
    bs(~b1, :) = all(bsn, 3);

    save(['allidx_' num2str(taskid, '%03d') '.mat'], 'bs');
end
