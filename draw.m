function car = draw()
% Create and return handles to allow animation
close all;
figure1 = figure('WindowState','maximized');
axes1 = axes('Parent',figure1);
light('Parent',axes1,'Position',[-0.3273 0.7559 0.5669]);
light('Parent',axes1,'Position',[-0.4330 0.5 0.75]);

box(axes1,'on');
axis([-2 2 -2 2]);
% Store annotation handles in a struct
car.line1 = line([-2 2], [0 0]);

car.body =  rectangle('Position', [-0.1 0.06 0.2 0.2], 'FaceColor', [0.3 0.5 1]);

car.tyre1 = rectangle('Position', [-0.08 0 0.035 0.06], 'Curvature', [1 1], 'FaceColor', 'k');

car.tyre2 = rectangle('Position', [0.035 0 0.035 0.06], 'Curvature', [1 1], 'FaceColor', 'k');

car.top = rectangle('Position', [-0.06 0.26 0.12 0.05], 'FaceColor', [1 0.1 0.2]);

car.rod = line([0 0], [0.31 0.6], 'LineWidth', 2, 'Color', 'black');

car.mass = rectangle('Position', [-0.025 0.55 0.05 0.1], 'Curvature', [1 1], 'FaceColor', 'b');
end
