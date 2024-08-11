% Specify line style in a graph

x = -pi:pi/100:pi;
y1 = sin(x);
y2 = sin(x-0.25);

% plot(x, y1, x, y2);
% plot(x, y1, 'o', x, y2, '--');
plot(x, y1,'o');
hold on
plot(x, y2, '--');
hold off