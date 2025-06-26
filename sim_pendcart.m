clear; close all; clc;

% System parameters
m = 1; M = 5; L = 0.3; g = -10; d = 1;

% Simulation time
tspan = 0:.01:10;
x0 = [0; 0; pi; 0.5]; % Initial state: cart at 0, pendulum inverted

% Simulate using ode45
[t, x] = ode45(@(t,x) pendulum_cart(x,m,M,L,g,d,0), tspan, x0);

% Animate
car = draw();
for k = 1:2:length(t)
    update(car, x(k,:),L);
    pause(0.01);
end

