instrreset
clear, clc;
 
arduino=serial('COM5','BaudRate',57600);
 
fopen(arduino);
 

for i=1:15
    %tic
    fprintf(arduino, '1200');
    %toc
    %disp('done')
    pause(6);
end

fclose(arduino);
