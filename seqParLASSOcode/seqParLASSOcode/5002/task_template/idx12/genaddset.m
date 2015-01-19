function outindset = genaddset(count, indend, indcap, capratio, max_index)
    if indend >= max_index
        outindset = [];
    else
        if count >= round(indcap * capratio)
            tlen = round(indcap * (1-capratio));
        else
            tlen = indcap-count;
        end

        if (indend+tlen) > max_index
            outindset  = (indend+1):max_index;
        else
            outindset  = indend+(1:tlen);
        end
    end
end
