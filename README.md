# ipm-matlab

The following programs aim to solve simple standard form linear optimization problems, with interior point method.
$$
\begin{aligned}
&\min \quad c'x\\
&\textrm{s.t.}\quad  Ax = b\\
&\quad\quad\quad x\ge 0
\end{aligned}
$$


- [linprog_ipm.m](linprog_ipm.m): interior point method.

  Usage: [x, fval] = linprog_ipm(c, A, b, eps, eta)

  x: optimal solution

  fval: optimal value

  eps: convergence constant

  eta: step-size scaler


- [testcase.m](testcase.m): test samples

  Only three given testcases works.

