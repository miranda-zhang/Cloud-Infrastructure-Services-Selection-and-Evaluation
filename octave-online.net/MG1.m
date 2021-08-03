#{
M/G/1 queue

https://sense.blazemeter.com/gui/663162/#tab=tabSummary
Ts = 0.164;
std=0.028;

folder 7 poisson_rnd_timer
https://sense.blazemeter.com/examples/663843/

Test Duration:00:02:00
Transactions Count:194
Average Response Time, ms: 217

#}
duration=2*60;
count=194;
std=0.028;
Ts = 0.164;
disp("Ts:"), disp(Ts);

lambda=count/duration;
disp("lambda:"), disp(lambda);

mu=1/Ts;
disp("mu:"), disp(mu);

rho = lambda/mu;
disp("Average utilization(rho):"), disp(rho);

Tw = (rho^2+(lambda^2)*(std^2))/(2*lambda* (1-rho) );
disp("Average waiting time(Tw):"), disp(Tw);
Tr=Tw+Ts;
disp("Average response time:"), disp(Tr);
