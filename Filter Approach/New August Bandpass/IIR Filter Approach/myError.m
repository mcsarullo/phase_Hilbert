function p = myError(a,e)

    absDiff = abs(a-e);
    absDiff = abs(absDiff./e) * 100;
    p = round(mean(absDiff), 2);
    
end