function x = NR2(Sq, IntGuess)
% newton raphson alg to est square root of any number
x=IntGuess; % start initial guess
%sq=25 % What to sqrt

% Main loop Run through iterations
for k = 1:3
x = x-(x^2-Sq)/ (2*x)

end

