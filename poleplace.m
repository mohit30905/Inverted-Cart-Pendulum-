clear; close all; clc;

% System parameters
m = 1; M = 5; L = 0.3; g = -10; d = 1;
b = 1; % Pendulum up

% State-space matrices
A = [0 1 0 0;
     0 -d/M b*m*g/M 0; 
     0 0 0 1; 
     0 -b*d/(M*L) -b*(m+M)*g/(M*L) 0];
B = [0; 1/M; 0; b*1/(M*L)];

%finding eigen values
eig(A)

% checking controllability of system
rank(ctrb(A,B))

p = [-1.1 ;-1.2 ;-1.3 ; -1.4]; %desired eigen value / poles
K = place(A,B,p); % k for desired eigen value place

tspan = 0:.01:20;
if (b == -1)
    x0 = [2; 0;0 ; 0]; 
    [t, x] = ode45(@(t,x) pendulum_cart(x,m,M,L,g,d,-K*(x-[1;0;0;0])), tspan, x0);
elseif (b == 1)
    x0 = [-3; 0; pi+0.5f; 0]; 
    [t, x] = ode45(@(t,x) pendulum_cart(x,m,M,L,g,d,-K*(x-[1 ; 0; pi; 0])), tspan, x0);
else
end

% Animate
car = draw();
for k = 1:10:length(t)
    update(car, x(k,:),L);
    pause(0.01);
end