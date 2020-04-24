[X,Y] = meshgrid(-8:.5:8); 
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
surf(X,Y,Z,'FaceColor','red','EdgeColor','none')
camlight left; 
lighting phong


x = 1:10;
y = x.^3;
h = plot(x,y);
h.Color='red';
h = plot(x,y,'Color','red');