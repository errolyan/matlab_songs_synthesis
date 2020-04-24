N = 100;
f(1) = 1;
f(2) = 1;
for n = 3:N
    f(n)=f(n-1) + f(n-2);
end

f(1:9)

num = randi(100)
if num < 30
    sz = 'low';
elseif num < 60
    sz = 'medium'
else 
    sz = 'high'
end