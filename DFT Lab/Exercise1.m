%fsamp = 25600;
%fsig = 1000;
%tsamp = 1/fsamp;
%t = 0 : tsamp : 127 * tsamp;
%y = sin(2*pi*fsig*t);
% all code commented out has been replaced by the 
% function sinegen with no loss of functionality

y = sinegen(25600, 1000, 127);
plot(y);
grid;
title('Simple sine wave');
xlabel ('Time');
ylabel('Amplitude');