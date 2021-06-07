syms x

a = x^2 + 4*x + 2;

b = sin(x);
c = cos(x);

taylor(a,x);
taylor(b,x, 'Order', 11);
taylor(b,x,0.5)


taylor(c,x,'Order',14)