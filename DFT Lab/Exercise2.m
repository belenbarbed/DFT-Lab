fsamp = 25600;
fsig = 1000;
nsamp = 128;
%S(1,:) = sinegen(fsamp, fsig, nsamp);
%S(2,:) = sinegen(fsamp, 2*fsig, nsamp);
%S(3,:) = sinegen(fsamp, 3*fsig, nsamp);
%S(4,:) = sinegen(fsamp, 4*fsig, nsamp);
for i = 1:10;
    S(i,:) = sinegen(fsamp, i*fsig, nsamp);
end
%plot(S);
%p = ones(1,10);
%f = p*S;
bn = [1 0 1/3 0 1/5 0 1/7 0 1/9 0];
%bn = [2 -1 2/3 -1/2 2/5 -1/3 2/7 -1/4 2/9 -1/5];
f = bn*S;
plot(f);