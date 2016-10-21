function plotspec(A, mult)
    amp = sqrt (A.* conj(A));
    phase = atan2( imag(A), real(A));
    subplot(2, 1, 1);
    bar(amp);
    subplot(2, 1, 2);
    %plot(phase);
    %subplot(2, 2, 3);
    %plot(phase);
    plot(mult);
end

