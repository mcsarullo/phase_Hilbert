
    %xhat Filter length = 2N + 1
    

    real = output(1:length(output)-N);
    imag = xhat(1+N:length(xhat));
    phase_experimental = atan2(imag,real);
    phase_expected = angle(hilbert(output));
    phase_expected = phase_expected(1:length(phase_expected)-N);

    abs_diff = abs(phase_experimental-phase_expected);


    tempSep = 0;
    sepArray = [];
    x=99999;

    while x < 500000
        x = x+1
        while abs_diff(x) > pi
            tempSep = tempSep + 1;
            x = x+1;
        end
        if tempSep > 0
            sepArray = [sepArray, tempSep];
        end
        tempSep = 0;
    end

    acc = median(sepArray);
