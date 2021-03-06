fsamp = 25600;
fsig = 1000;
nsamp = 128;
%S(1,:) = sinegen(fsamp, fsig, nsamp);
%S(2,:) = sinegen(fsamp, 2*fsig, nsamp);
%S(3,:) = sinegen(fsamp, 3*fsig, nsamp);
%S(4,:) = sinegen(fsamp, 4*fsig, nsamp);

%plot square wave with the first 10 harmonics of th FT approximation
for i = 1:10;
    S(i,:) = sinegen(fsamp, i*fsig, nsamp);
end

%directly plotting S doesn't work because it's done by columns where the
%pertinent data is in rows. Need the transpose
%plot(S);

%a bn vector of ones generates some sort of oscillating tangent
%p = ones(1,10);
%f = p*S;

%bn vector for the approximation of a square wave
%bn = [1 0 1/3 0 1/5 0 1/7 0 1/9 0];

%our derived vector for the sawtooth function (first 10 terms)
bn = [2 -1 2/3 -1/2 2/5 -1/3 2/7 -1/4 2/9 -1/5];
f = bn*S;
plot(f);