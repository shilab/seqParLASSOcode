function outindset = get_idx(count, indend, indcap, capratio, feat_cnt)

    max_index = feat_cnt;

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
