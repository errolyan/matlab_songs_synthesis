A = pascal(3);
B = magic(3);
m = 3; 
n = 3;
for i = 1:m
     for j = 1:n
        C(i,j) = A(i,:)*B(:,j);
     end
end
