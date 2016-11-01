x(1:16) = zeros(1, 16);
for i = 1:1;
    x(i) = 1;
end
%x(1) = 1;
ampf = fft(x);
amp1 = ampli(ampf);

plot(amp1);