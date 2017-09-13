function b = logitR(y, x, maxiter, b0)
%
%

if nargin == 2
    maxiter = 50; b0 = [0, 0];
end
if nargin == 3
    b0 =[0, 0];
end
oldb = b0';
dx = [ones(length(x), 1), x];
for i = 1: maxiter	
    eta = dx * oldb;	
    t1 = exp(eta);	
    p = t1 ./ (1+t1);	
    t2 = p .* (1-p);
    g1 = sum(y - p);
    g2 = sum(x.*(y-p));
    h11 = sum(t2);
    h12 = sum(x.*t2);
    h22 = sum((x.^2) .* t2);
    g = [g1; g2];
    H = [h11, h12; h12, h22];
    inc = H\g;
    newb = oldb + inc;
    if all(abs(newb - oldb) < 1e-6)
        break;
    else
        oldb = newb;
    end
    disp(['Iteration ', num2str(i), ' completed']);
end
b = newb;