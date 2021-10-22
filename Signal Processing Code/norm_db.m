function result = norm_db(STFT_Values)
    datan = abs(STFT_Values);
    datan = datan-min(datan(:));
    datan = datan/max(datan(:));
    result = 20*log10(datan);
end