function update(car, state, L)
    x = state(1);      % Cart position
    theta = pi+state(3);  % Pendulum angle

    % Cart dimensions
    cart_width = 0.2;
    cart_height = 0.2;

    % Wheel dimensions
    wheel_radius = 0.03;
    wheel_spacing = 0.115;

    % Top block dimensions
    top_width = 0.12;
    top_height = 0.05;

    % Mass (pendulum bob) dimensions
    mass_radius = 0.05;

    % --- Update cart body ---
    set(car.body, 'Position', [x - cart_width/2, 0.06, cart_width, cart_height]);

    % --- Update tyres ---
    set(car.tyre1, 'Position', [x - wheel_spacing/2 - wheel_radius, 0, 2*wheel_radius, 2*wheel_radius]);
    set(car.tyre2, 'Position', [x + wheel_spacing/2 - wheel_radius, 0, 2*wheel_radius, 2*wheel_radius]);

    % --- Update top block ---
    set(car.top, 'Position', [x - top_width/2, 0.26, top_width, top_height]);

    % --- Calculate pendulum coordinates ---
    cart_top_x = x;
    cart_top_y = 0.31;

    pend_x = cart_top_x + L*sin(theta);
    pend_y = cart_top_y + L*cos(theta);
    % --- Update pendulum rod ---
    set(car.rod, 'XData', [cart_top_x pend_x], 'YData', [cart_top_y pend_y]);

    % --- Update pendulum mass (bob) ---
    set(car.mass, 'Position', [pend_x - mass_radius/2, pend_y, mass_radius, mass_radius]);
end
