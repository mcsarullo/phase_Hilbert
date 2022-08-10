function y = sarulloIIR(x, b, a)
%b = b ./ a(1);
%a = a./ a(1);
n = length(a);
z(n) = 0;
t = zeros(size(x));
for m = 1:length(t)
    Xm = x(m)
    t(m) = b(1) * Xm + z(1)
    Ym = t(m)
    for i = 2:n
        z(i-1) = b(i) * Xm + z(i) - a(i) * Ym
    end
end
y = z;
end