load unknown;

b = [0.0039 0.0193 0.0386 0.0386 0.0193 0.0039];
a = [1.000 -2.3745 2.6360 -1.5664 0.4929 -0.0646];

y = filter(b, a, unknown);
yf = fft(y);
ampliy = ampli(y);
plot(ampliy);