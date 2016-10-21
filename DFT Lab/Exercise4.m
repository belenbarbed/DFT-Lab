x = sinegen(20000, 1000, 128);
H = hann(128);
B = blackman(128);
mult = x' .* B;
plot(mult);
x = fft(mult);
plotspec(x, mult);