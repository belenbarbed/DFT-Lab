fsamp = 25600;
fsig = 1000;
nsamp = 128;

%same as ex2 but representing the square wave thorugh the cosine
%which will generate a similar plot but with a 90 degrees phase shift
for i = 1:10;
    S(i,:) = cosgen(fsamp, i*fsig, nsamp);
end
%same FT coefficients
an = [1 0 -1/3 0 1/5 0 -1/7 0 1/9 0];
g = an*S;
plot(g);

title('The same Square wave as before but represented as cosines');
xlabel ('Sample Index');
ylabel('Amplitude');