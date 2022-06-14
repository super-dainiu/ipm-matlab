eps = 1e-10; eta = 0.95; warning('off'); % 0 warnings!

%% Testcase 1
load('e226.mat');
[x, fval] = linprog_ipm(c, A, b, eps, eta);
fprintf('linprog_ipm e226.mat result: fval=%.5f\n', fval);
[x, fval] = linprog(c, [], [], A, b, zeros(numel(c), 1));
fprintf('linprog e226.mat result: fval=%.5f\n\n', fval);

%% Testcase 2
load('nug08.mat');
[x, fval] = linprog_ipm(c, A, b, eps, eta);
fprintf('linprog_ipm nug08.mat result: fval=%.5f\n', fval);
[x, fval] = linprog(c, [], [], A, b, zeros(numel(c), 1));
fprintf('linprog nug08.mat result: fval=%.5f\n\n', fval);

%% Testcase 3
load('scrs8.mat');
[x, fval] = linprog_ipm(c, A, b, eps, eta);
fprintf('linprog_ipm scrs8.mat result: fval=%.5f\n', fval);
[x, fval] = linprog(c, [], [], A, b, zeros(numel(c), 1));
fprintf('linprog scrs8.mat result: fval=%.5f\n\n', fval);