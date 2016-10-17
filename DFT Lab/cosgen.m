function y = cosgen(fsamp, fsig, nsamp);
tsamp = 1/fsamp;
t = 0 : tsamp : nsamp * tsamp;
y = cos(2*pi*fsig*t);
end