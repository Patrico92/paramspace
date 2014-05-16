function analyse(f, v)

region = [min([f(:,1);v(:,1)]) min([f(:,2);v(:,2)]) max([f(:,1);v(:,1)]) max([f(:,2);v(:,2)])];

df = dispersion(f, region, 10, 10);
dv = dispersion(v, region, 10, 10);

[ df dv  min(f(:,1)) max(f(:,1)) min(f(:,2)) max(f(:,2))  min(v(:,1)) max(v(:,1)) min(v(:,2)) max(v(:,2))]
