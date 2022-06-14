function [x, y, s, exitflag] = ipm_iter(c, A, b, x, y, s, eps, eta)
rb = A * x - b;
rc = A' * y + s - c;
mu = s' * x / (numel(s));
if mu < eps
    exitflag = true;
    return
else
    exitflag = false;
end

%% Predictor
[delta_x_aff, delta_y_aff, delta_s_aff] = get_step(A, x, s, rc, rb, x .* s);
a_p_aff = get_alpha(x, delta_x_aff);
a_d_aff = get_alpha(s, delta_s_aff);

%% Corrector
mu_aff = (s + a_d_aff * delta_s_aff)' * (x + a_p_aff * delta_x_aff)  / (numel(s));
sigma = (mu_aff / mu) ^ 3;
[delta_x, delta_y, delta_s] = get_step(A, x, s, rc, rb, x .* s + delta_x_aff .* delta_s_aff - sigma * mu);

%% Do step
a_p = get_alpha(x, delta_x, eta);
a_d = get_alpha(s, delta_s, eta);
x = x + a_p * delta_x;
y = y + a_d * delta_y;
s = s + a_d * delta_s;
end