%% Candles problem
% This script simulates N instances of a candle blowing problem. each time
% we blow the candles, a uniformly random number of candles are
% extinguished from the remaining lit candles.

% The answer should be the harmonic sum to 30, which should be close to 4.

n = 30; % number of candles
N = 10000; % number of simulations

B = zeros(N,1); % initialization of simulations

for j=1:N
    i = 0;
    while n > 0.5 % while there is at least one candle remaining
        i = i + 1; % one more attempt
        n = n - randi(n); % a random number of candles are extinguished
    end
    B(j) = i; % recorded number of attempts
    n = 30; % reset candles to 30
end

mean(B) % Display the mean number of attempts per simulation