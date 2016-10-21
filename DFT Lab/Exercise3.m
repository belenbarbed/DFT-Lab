%x = sinegen(8000, 1000, 8);
x(1:16) = zeros(1, 16);
x(2) = 1;
A = fft(x)
%plot(x);
%plot(A);
plotspec(A);