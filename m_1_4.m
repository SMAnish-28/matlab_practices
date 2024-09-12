x = inline('exp(-t).*((t>=0)&(t<1))', 't');

t = (0:0.01:1);

E_x = sum(x(t).*x(t).*0.01);

x_squared = inline('exp(-2*t).*((t>=0)&(t<1)', 't');

E_X = quad(x_squared, 0, 1);

g_squared = inline('exp(-2*t).*(cos(2*pi*t).^2).*(t>=0)', 't');

t = (0:0.001:100);
E_g = sum(g_squared(t)* 0.001);
E_g = quad(g_sqaured, 0, 100); 