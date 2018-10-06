%% Open and closed door problem
% We have N doors and N persons. All doors are initially closed.
% The first person opens every door, the second person closes every second
% door. The jth person opens every jth door if it is closed or closes it if
% it is open. How many doors are left open after all persons open and
% closed the doors.

% The answer is the square root of the next lower perfect square of N or N
% if it is itself a perfect square, that is a door will be closed at the
% end if it has an even number of divisors and it will stay open if it has
% an odd number of divisors and only perfect squares have an odd number of
% divisors.

N = 1000; % number of doors

D = zeros(N,1); % all doors are initially closed (0)

for i = 1:N % for all doors
    for j = 1:N % for all integers from 1 to N
        if mod(j,i) == 0 % if this is the jth door...
           if D(j) == 0
               D(j) = 1; % open it if it is closed,
           else
               D(j) = 0; % and close it if it is open.
           end
        end
    end
end

d = 0; % number of open doors

for i = 1:N % for all doors
    if D(i) == 1
        d = d + 1; % if the door is open add 1 to the tally
    end
end

disp(num2str(d)) % display the number of open doors

% result should be equal to 'floor(sqrt(N))'