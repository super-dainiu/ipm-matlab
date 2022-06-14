function [x, fval] = linprog_ipm(c, A, b, eps, eta)
[x, y, s] = get_start_point(c, A, b);

while true
    [x, y, s, e] = ipm_iter(c, A, b, x, y, s, eps, eta);
    if e
        fval = c' * x;
        fprintf('Optimal solution found.\n\n');
        return
    end
end
end