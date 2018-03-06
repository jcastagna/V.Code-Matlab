
% newton raphson alg to est square root 2

x=1; % start initial guess
y=25

for k=1:100
x = x-(x^2-y)/ (y*x)

end

x
