x = 0:0.0075:5;

A = 5;
f1 = 5;
f2 = 30;
f3 = 1.5;

y1 = A*sin(2*pi*f1*x);
y2 = A*0.25*sin(2*pi*f2*x);
y3 = A*0.25*sin(2*pi*f3*x);
y4 = y1 + y2 + y3;

subplot(4,1,1);
plot(x,y1);

subplot(4,1,2);
plot(x,y2);

subplot(4,1,3);
plot(x,y3);

subplot(4,1,4);
plot(x,y4);