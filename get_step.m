function [delta_x, delta_y, delta_s] = get_step(A, x, s, rc, rb, rxs)
d = s.^(-1) .* x;
delta_y = (A * diag(d) * A') \ (-rb - A * (d .* rc) + A * (s .^ (-1) .* rxs));
delta_s = -rc - A' * delta_y;
delta_x = -s.^(-1) .* rxs - d .* delta_s;
end