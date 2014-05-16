neb = load('sha_GA_500');
par = load('sha_GA_pareto');

par = par(:,2:3);

neb = adj_points(neb);
par = adj_points(par);

figure;
hold on;

plot(neb(:,2),neb(:,1),'r.');
plot(par(:,2),par(:,1),'g*-');
xlabel('time (s)');
ylabel('power (W)');
legend('visited configurations','Pareto front');

min_time = par(1,:);
min_power = par(size(par,1),:);

mid_config = par(size(par,1)/2,:);

plot(min_time(2),min_time(1),'ko');
plot(min_power(2),min_power(1),'ko');
plot(mid_config(2),mid_config(1),'ko');

min_time_mh = 1/min_time(2);
min_power_mh = 1/min_power(2);
mid_config_mh = 1/mid_config(2);

[min_time_mh min_time(1) min_time_mh/min_time(1)]
[min_power_mh min_power(1) min_power_mh/min_power(1)]
[mid_config_mh mid_config(1) mid_config_mh/mid_config(1)]







