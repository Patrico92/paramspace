function d = dispersion(data, region, gridx, gridy)

figure;
plot(data(:,1), data(:,2), '.k');
hold on;

points = size(data,1);

% maxx = max(data(:,1));
% minx = min(data(:,1));
% maxy = max(data(:,2));
% miny = min(data(:,2));

minx = region(1);
miny = region(2);
maxx = region(3);
maxy = region(4);

die_w = (maxx - minx)/gridx;
die_h = (maxy - miny)/gridy;

ndies = gridx * gridy;

abs_error = 0;

for n=0:ndies-1,
    col = rem(n, gridx);
    row = fix(n/gridx);

    x1 = minx + (col * die_w);
    y1 = miny + (row * die_h);
    x2 = x1 + die_w;
    y2 = y1 + die_h;

    rectangle('Position',[x1 y1 die_w, die_h]);

    count = 0;
    for j=1:points,
    	if (data(j,1) >= x1 & data(j,1) < x2 & data(j,2) >= y1 & data(j,2) < y2)
	   count = count + 1;
	end
    end

    abs_error = abs_error + abs(count - (points/ndies));
end

d = abs_error / ndies;
