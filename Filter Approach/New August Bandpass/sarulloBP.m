function bandp = sarulloBP(x, h, y)
    bandp = zeros(1,length(x));
    cLen = length(h);
    delayInSamples = (cLen-1)/2;


            for n = cLen:length(x)
            tmp = 0;
            for N = 1:cLen
                tmp = tmp + h(N) * x(n - N + 1);
            end
            bandp(n) = tmp;
            end  

    if(y == 'h')
     %this corrects the delay
     bandp(1:length(bandp) - delayInSamples) = bandp(delayInSamples + 1:length(bandp));

    end

end



