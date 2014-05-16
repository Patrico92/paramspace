function adj_data=adj_points(data)

freq_scale = 2500/200;
tech_scale = 130/32;

adj_data = data;
adj_data(:,1) = adj_data(:,1)*freq_scale/tech_scale;

adj_data(:,2) = 2*adj_data(:,2)/1000/freq_scale;




