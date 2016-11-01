load unknown;

x(1:16) = zeros(1, 16);
for i = 1:4;
    x(i) = 1;
end
%x(1) = 1;
ampf = fft(x);
unkf = fft(unknown);

outp = conv(x, unknown);
outptf = fft(outp);
outpa = ampli(outptf);

%amp1 = ampli(ampf);
%unk1 = ampi(unkf);

%subplot(2,1,1);
%plot(x);
%subplot(2,1,2);
plot(outpa);

title('Convolution of Unknown Signal and Low Pass FIR');
xlabel ('Frequency');
ylabel('Amplitude');