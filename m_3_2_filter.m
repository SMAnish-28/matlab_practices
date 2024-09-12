b = [1 0 0];
a = [1 -1 1];

n = (0:30)';

delta = inline('n==0', 'n');

h = filter(b, a, delta(n));

stem(n, h, 'k');
axis([-.5 30.5 -1.1 1.1]);

xlabel('n');
ylabel('h[n]');

x = inline('cos(2*pi*n/6).*(n>=0)', 'n');

y = filter(b, a, x(n));

stem(n, y, 'k');

xlabel('n');
ylabel('y[n]');

z_i = filtic(b, a, [1 2]);
y_0 = filter(b, a, zeros(size(n)), z_i);

stem(n, y_0, 'k');

xlabel('n');
ylabel('y_{0} [n]');

axis([-0.5 30.5 -2.1 2.1]);

y_total = filter(b, a, x(n), z_i);

sum(abs(y_total-(y + y_0)))