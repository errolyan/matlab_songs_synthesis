load count.dat
c3 = count(:,3); % Data at intersection 3 
tdata = (1:24)'; 
p_coeffs = polyfit(tdata,c3,6);

figure 
plot(c3,'o-') 
hold on 
tfit = (1:0.01:24)'; 
yfit = polyval(p_coeffs,tfit); 
plot(tfit,yfit,'r-','LineWidth',2)
legend('Data','Polynomial Fit','Location','NW')