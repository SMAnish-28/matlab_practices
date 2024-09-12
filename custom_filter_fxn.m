function [y] = m_3_1_stem(b, a, x, yi);

yi = flipud(yi(:));
y = [yi;zeros(length(x))]