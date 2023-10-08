% Define r values
r = linspace(0.01, 255, 1000); % Avoiding division by 0 by starting from 0.01

% Assuming L=256 for an 8-bit image
L = 256;
m = L/2;

% Define a range of E values
E_values = [0.5, 1, 2, 4, 8, 16];

% Plot the transformation curves
figure;
hold on;

for E = E_values
    T = 1 ./ (1 + (m ./ r).^E);
    plot(r, T, 'DisplayName', ['E = ', num2str(E)]);
end

xlabel('r');
ylabel('T(r)');
legend();
title('Family of transformations as a function of E with m = L/2');
grid on;
