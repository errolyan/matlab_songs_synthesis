x = 0:pi/100:2*pi;
y = sin(x);
y2 = sin(x- 0.25*pi);
y3 = sin(x-0.5*pi);
plot(x,y,'r:+',x,y2,'m:+',x,y3,'ks')
axis([0 7 -2 2])
legend('sin(x)','sin(x-.25)','sin(x-.5)')

