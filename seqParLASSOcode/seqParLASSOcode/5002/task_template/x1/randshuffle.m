function randshuffle()
    try
        rng('shuffle');
    catch rng_exception
        try
            newstream = RandStream('mt19937ar', 'Seed', 'shuffle');
        catch new_stream_shuffle
            newstream = RandStream('mt19937ar','seed',sum(100*clock));
        end
        try
            RandStream.setGlobalStream(newstream);
        catch set_global_stream
            RandStream.setDefaultStream(newstream);
        end
    end
end
