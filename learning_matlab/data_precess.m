load count.dat
c3 = count(:,3); % Data at intersection 3
c3NaNCount = sum(isnan(c3))
isnan(count)

h = histogram(c3,10); % Histogram
N = max(h.Values); % Maximum bin count
mu3 = mean(c3); % Data mean
sigma3 = std(c3); % Data standard deviation

hold on
plot([mu3 mu3],[0 N],'r','LineWidth',2) % Mean
X = repmat(mu3+(1:2)*sigma3,2,1);
Y = repmat([0;N],1,2);
plot(X,Y,'Color',[255 153 51]./255,'LineWidth',2) % Standard deviations
legend('Data','Mean','Stds')
hold off


outliers = (c3 - mu3) > 2*sigma3;
c3m = c3; % Copy c3 to c3m
c3m(outliers) = NaN; % Add NaN values


plot(c3m,'o-')


span = 3; % Size of the averaging window
window = ones(span,1)/span; 
smoothed_c3m = convn(c3m,window,'same');

h = plot(smoothed_c3m,'ro-')
hold off

% 平均值
x1 = mean(count)
x2 = median(count)
x3 = mode(count)

% 规模
dx1 = max(count)-min(count)
dx2 = std(count)
dx3 = var(count)

% 分布形状
figure
hist(count)
legend('Intersection 1',...
       'Intersection 2',...
       'Intersection 3')
   
c1 = count(:,1); % Data at intersection 1
[bin_counts,bin_locations] = hist(c1);
bin_width = bin_locations(2) - bin_locations(1);
hist_area = (bin_width)*(sum(bin_counts));

figure
hist(c1)
hold on

mu1 = mean(c1);
exp_pdf = @(t)(1/mu1)*exp(-t/mu1); % Integrates
                                   % to 1
t = 0:150;
y = exp_pdf(t);
plot(t,(hist_area)*y,'r','LineWidth',2)
legend('Distribution','Exponential Fit')

c1 = count(:,1); % Data at intersection 1
c2 = count(:,2); % Data at intersection 2

figure
scatter(c1,c2,'filled')
xlabel('Intersection 1')
ylabel('Intersection 2')

C12 = cov([c1 c2])

% 相关系数
R12 = corrcoef([c1 c2])

r12 = R12(1,2) % Correlation coefficient

r12sq = r12^2 % Coefficient of determination

figure
c3 = count(:,3); % Data at intersection 3
scatter3(c1,c2,c3,'filled')
xlabel('Intersection 1')
ylabel('Intersection 2')
zlabel('Intersection 3')

% 主成分分析
vars = eig(cov([c1 c2 c3]))
explained = max(vars)/sum(vars)
figure
plotmatrix(count)
