g = inline('exp(-t).*cos(2*pi*t).*(t>=0)', 't');

t = (-2:0.01:2);

plot(t, g(2*t+1));

xlabel('t');

ylabel('g(2*t+1)');

grid;

plot(t, g(-t+1));

xlabel('t');

ylabel('g(-t+1)');

grid;

plot(t, g(2*t+1)+g(-t+1));

xlabel('t');

ylabel('h(t)');

grid;