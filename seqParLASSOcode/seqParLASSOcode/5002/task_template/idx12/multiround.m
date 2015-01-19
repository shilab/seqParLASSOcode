function suppset = multiround(X, Y, roundn)
    b = zeros(size(X, 2), roundn);
    for roundi = 1:roundn
        rng('shuffle');
        % RandStream.setDefaultStream(RandStream('mt19937ar','seed',sum(100*clock)));
        indseq            = randperm(size(X, 2));
        b(indseq, roundi) = seqcvlasso(X(:, indseq), Y);
        save('suball.mat', 'roundi', 'b');
    end
    suppset = all(b, 2);
end
