C1 = 0.4000; % Player 1 redraw threshold
C2 = 0.5780; % Player 2 redraw threshold, I think about 0.5780 is optimal, 
             % but I might be wrong.

W1 = 0;
W2 = 0; % Initialization of number of wins for each player

nsim = 1000000; % number of simulations

for n = 1:nsim
    x1 = rand(1); % Player 1 draws a number
    if x1 < C1 
        x1 = rand(1); % if number is below threshold redraw
    end
    x2 = rand(1); % Player 2 draws a number
    if x2 < C2
        x2 = rand(1); % if number is below threshold redraw
    end
    if x1 > x2
        W1 = W1 + 1; % if player 1 wins add 1 win to her tally
    elseif x1 < x2
        W2 = W2 + 1; % if player 2 wins add 1 win to his tally
    end
end

fprintf('P1 wins: %10i\n', W1)
fprintf('P2 wins: %10i\n', W2) % Print number of wins for each player