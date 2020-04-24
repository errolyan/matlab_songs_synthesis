% Generate a random number
a = randi(100, 1);

% If it is even, divide by 2
if rem(a, 2) == 0
    disp('a is even')
    b = a/2
end

%if elseif else
if a < 30
    disp('small')
elseif a < 80
    disp('medium')
else
    disp('large')
end