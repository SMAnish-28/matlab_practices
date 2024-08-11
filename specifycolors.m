% Specify colors and markers

x = -pi:pi/10:pi;
y1 = sin(x);
y2 = sin(x - 0.25);
plot(x, y1, 'go', x, y2, 'r--');