conv([1 1 1 1], [1 1 1 1])

h = inline('(cos(pi*n/3)+sin(pi*n/3)/sqrt(3)).*(n>=0)', 'n');

y = conv(h(n), x(n));

subplot(2,1,1);
stem([0:60], y, 'k');

xlabel('n');
ylabel('y[n]');

subplot(2,1,2);
stem(n, y(1:31), 'k');