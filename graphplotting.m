t = 0:0.01:1;
f = 10;
% sin wave
x1 = sin(2*pi*f*t);
% cos wave 
x2 = cos(2*pi*f*t);

% plot(t, x1, t, x2);
% title("sin and cos wave");

subplot(3, 1, 1);
plot(t, x1);
title("sine wave");

subplot(3, 1, 2);
plot(t, x2);
title("cosine wave");

subplot(3, 1, 3);
plot(t, x1, t, x2);
title("sine & cosine wave both in one graph");

