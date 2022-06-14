function alpha = get_alpha(u, delta_u, eta)
if ~exist('eta','var')
    eta = 1;
end

alpha = inf;
for i = 1:numel(u)
    if delta_u(i) < 0
        alpha = min(alpha, -u(i) / delta_u(i));
    end
end
alpha = min(alpha * eta, 1);
end