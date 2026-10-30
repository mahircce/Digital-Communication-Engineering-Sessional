% Cluster size and shift parameters
i = 4;
j = 1;
N = i^2 + i*j + j^2;
 
radius = 1;
rows = 18;
cols = 18;
 
figure; hold on; axis equal;
title(['Hexagonal Frequency Reuse Pattern, N = ', num2str(N)]);
xlabel('X-axis'); ylabel('Y-axis');
theta = (1:6) * pi/3;
for r = 0:rows-2
    for c = 0:cols-1
        % Calculate hexagon center coordinates
        x = radius * (3/2 * c);
        y = radius * (sqrt(3) * r + (sqrt(3)/2) * mod(c,2));
 
        % Assign frequency using modulo pattern
        freq = mod(c*i + r*j, N) + 2;
 
        % Draw the hexagon cell
        fill(x + radius*cos(theta), y + radius*sin(theta), freq, ...
            'EdgeColor', 'k');
    end
end
 
colormap(jet(N));
colorbar;
