function [x, y, s] = get_start_point(c, A, b)
%% Initial (x, y, s)
H = A * A';
x = A' * (H \ b);
y = H \ (A * c);
s = c - A' * y;

%% x, s > 0
delta_x = max(-3/2*min(x), 0);
delta_s = max(-3/2*min(s), 0);
x = x + delta_x;
s = s + delta_s;

%% Balance x, s
delta_x = 0.5 * (x' * s) / (sum(s));
delta_s = 0.5 * (x' * s) / (sum(x));
x = x + delta_x;
s = s + delta_s;
end
