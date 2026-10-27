% Parameters
i = 2;   % shift along row
j = 1;   % shift along column
N = i^2 + i*j + j^2;   % cluster size

radius = 1;    % hexagon radius
rows = 10;     % number of rows in grid
cols = 10;     % number of columns in grid

figure; hold on; axis equal;
title(['Hexagonal Frequency Reuse Pattern, N = ', num2str(N)]);
xlabel('X-axis'); ylabel('Y-axis');

% Function to draw hexagon
theta = (1:6) * pi/3;
for r = 0:rows-2
    for c = 0:cols-1
        % Hexagon center coordinates
        x = radius * (3/2 * c);
        y = radius * (sqrt(3) * r + (sqrt(3)/2) * mod(c,2));

        % Frequency assignment (simple modulo pattern)
        freq = mod(c*i+r*j, N) + 2;

        % Draw hexagon
        fill(x + radius*cos(theta), y + radius*sin(theta), freq, ...
            'EdgeColor', 'k');
    end
end

colormap(jet(N));
colorbar;