x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y,'b--');
xlabel('x');
ylabel('sin(x)');

hold on;
y = cos(x);
plot(x,y,'r--')
legend('sin','cos');
hold off;