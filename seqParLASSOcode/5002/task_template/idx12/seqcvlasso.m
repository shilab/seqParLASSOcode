function b = seqcvlasso(X, Y)
    indcap = 5000;
    indrto = 0.6;
    indset = 1:indcap;
    indend = indcap;
    b      = zeros(size(X, 2), 1);

    while true
        partb      = cvsolveb(X(:, indset), Y);
        b(indset)  = partb;
        addset     = genaddset(length(find(partb)), indend, indcap, indrto, size(X, 2));

        if isempty(addset)
            break;
        end

        save('subsuball.mat', 'indend');

        indend = addset(end);
        indset = [indset(all(partb, 2)) addset];
    end
end
