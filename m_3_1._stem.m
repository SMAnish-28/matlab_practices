f = inline('exp(-n/5).*cos(pi*n/5).*(n>=0)', 'n');

n = (-10:10);

subplot(4,1,1);
stem(n, f(n), 'k');
xlabel('n');
ylabel('f[n]');

subplot(4,1,2);
stem(n, f(-n), 'k');
ylabel('f[-n]');

subplot(4,1,3);
stem(n, f(-2*n), 'k');
ylabel('f[-2n]');

subplot(4,1,4);
stem(n, f(-2*n+1), 'k');
ylabel('f[-2n+1]');

