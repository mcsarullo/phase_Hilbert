instrreset
clear, clc

arduino=serial('COM6','BaudRate',57600); % sniffs serial port data
fopen(arduino); % opens port
n = 2000; % Represents the total amount of voltage entries you want to take (so its not infinite in testing)
i = 1; % incrementer for while loop limited by n.
b = 1; % incrementer for phase and magnitude to allow for periodic additions every k inputs.
k = 100; % number of voltage inputs per hilbert() for phase and magnitude.
results = zeros(1,n); % array for input

subplot(3,1,1);
orig = animatedline('Color', 'k', 'LineStyle', '-', 'Marker', '.');
title('Original')

subplot(3,1,2);
mag = animatedline('Color', 'b', 'LineStyle', '-', 'Marker', '.');
title('magnitude')

subplot(3,1,3);
phase = animatedline('Color', 'g', 'LineStyle', '-', 'Marker', '.');
title('phase of Hilbert transform')


while i < n
    try

        r = fscanf(arduino,'%d');
        
        results(i) = r; % voltage added to array
            if mod(b,k+1) == 0 % tests if hilbert() should be done and appends to graph.
                %%%%%%%%%
                %implement bandpass here
                %%%%%%%%%
                x = hilbert(results(b-k :b));
                m = abs(x);
                p = angle(x);
                
                if r > 1000
                    writeDigitalPin(a, 'D50', 1);
                end
                addpoints(mag, b-k:b , m);
                drawnow
                addpoints(phase, b-k:b, p);
                drawnow 
            end
        addpoints(orig, i, r); % updates regular graph
        drawnow
        i = i + 1;
        b = b + 1;
    catch
        
    end
    

end

fclose(arduino);