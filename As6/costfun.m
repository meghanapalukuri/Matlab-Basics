%% CostOpt Function
function f = costfun(d)
f = 1.2654*(300*d(1)^1.327+500*d(2)^1.327+400*d(3)^1.327); % The cost of pipe is given by the following function
end