function y = sarulloIIR(x, b, a)
y = zeros(1, length(x));

for n = 1:length(x)
atmp = 0;
btmp = 0;

    for l = 2:length(a)
        if n-l + 1 < 1
            atmp = atmp + 0;
        else
            atmp = atmp + (a(l) * y(n-l + 1));
        end
    end
    
    for k = 1:length(b)
        if n-k + 1 < 1
            btmp = btmp + 0;
        else
            btmp = btmp + (b(k) * x(n-k + 1));
        end
    end

y(n) = atmp + btmp;

end
end