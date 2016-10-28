load unknown;
x1(1:1048) = unknown(1:1048);
A1 = fft(x1);

A1(301:1048) = 0;
amp1 = ampli(A1);
%subplot(2, 2, 1);
plot(amp1);
title('Spectral components under 300Hz');
xlabel ('Frequency');
ylabel('Amplitude');

x2 = ifft(A1);
amp2 = ampli(x2);

%subplot(2, 1, 1);
%plot(x1);
%title('Unknown unfiltered signal');
%xlabel ('Frequency');
%ylabel('Amplitude');

%subplot(2, 1, 2);
%plot(amp2);
%title('Filtered signal');
%xlabel ('Frequency');
%ylabel('Amplitude');

