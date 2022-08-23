L = 231;
n = -L:L; % index n from [-40,-39,....,-1,0,1,...,39,40];
h = 1./(pi*n); %impulse response of Hilbert Transform
h(L+1) = 0; %Corresponds to the 0/0 term (for 41st term, 0, in n vector above)

xhat = filter(h,1,output); %resultant from Hilbert Transform H(w);

hold on
%plot(xhat)
plot(output)
plot(atan2(xhat,output) * -1)
plot(angle(hilbert(output)))
xlim([10000 30000])
