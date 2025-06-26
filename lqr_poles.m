m = 1; M = 5; L = 0.3; g = -10; d = 1;
b = 1; % Pendulum up

% State-space matrices
A = [0 1 0 0;
     0 -d/M b*m*g/M 0; 
     0 0 0 1; 
     0 -b*d/(M*L) -b*(m+M)*g/(M*L) 0];
B = [0; 1/M; 0; b*1/(M*L)];

Q = [1 0 0 0;
    0 1 0 0;
    0 0 10 0;
    0 0 0 100];
R = 0.001;

%find k by linear quadric regulator
K = lqr(A,B,Q,R);

tspan = 0:.01:10;
if (b == -1)
    x0 = [0 ;0;pi ; 0]; 
    [t, x] = ode45(@(t,x) pendulum_cart(x,m,M,L,g,d,-K*(x-[4;0;0;0])), tspan, x0);
elseif (b == 1)
    x0 = [0; 0; pi+.1; 0]; 
    [t, x] = ode45(@(t,x) pendulum_cart(x,m,M,L,g,d,-K*(x-[1 ; 0; pi; 0])), tspan, x0);
else
end

% Animate
car = draw();
for k = 1:10:length(t)
    update(car, x(k,:),L);
    pause(0.01);
end
