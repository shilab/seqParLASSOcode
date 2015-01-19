function b = seqcvlasso(X, Y, indcap, indrto)
    indset = 1:indcap;
    innb   = zeros(size(X, 2), 1);

    while true
        indend       = indset(end);
        partb        = cvsolveb(X(:, indset), Y);
        innb(indset) = partb;

        save('suball.mat', 'indend');

        addset = genaddset(length(find(partb)), indend, indcap, indrto, size(X, 2));
        if isempty(addset)
            break;
        end
        indset = [indset(all(partb, 2)) addset];
    end
    b = innb;
end
