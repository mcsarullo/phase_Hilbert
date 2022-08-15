function y = sarulloIIR(x, b, a)

n = length(a);
b    = b ./ a(1);
a    = a ./ a(1);
z(n) = 0;
Y    = zeros(size(x));
for m = 1:length(Y)
   Xm   = x(m);
   Y(m) = b(1) * Xm + z(1);
   Ym   = Y(m);
   for i = 2:n
      z(i - 1) = b(i) * Xm + z(i) - a(i) * Ym;
   end
y = z;
end