diary ec5.txt

disp("Problem 1: ")
A = rand(5);
B = A' * A;
[P, ~] = eig(B);
% Basis QU
P
%Orthogonal Q'Q=I
disp("If basis (P) is orthogonal, P' * P == I")
check_diff = max(max(P' * P - eye(5)))

disp(" ")

disp("Problem 2: ")
x1 = [-10; 2; -6; 16; 2];
x2 = [13; 1; 3; -16; 1];
x3 = [7; -5; 13; -2; -5];
x4 = [-11; 3; -3; 5; -7];

v1 = x1;
v2 = x2 - ((x2' * v1) / (v1' * v1)) * v1;
v3 = x3 - (((x3' * v1) / (v1' * v1)) * v1)-((x3' * v2) / (v2' * v2)) * v2;
v4 = x4 - (((x4' * v1) / (v1' * v1)) * v1)...
    - (((x4' * v2) / (v2' * v2)) * v2) - (((x4' * v3) / (v3' * v3)) * v3);
V = [v1, v2, v3, v4]

disp(" ")

disp("Problem 3: ")
A=rand(4, 2) * rand(2, 4);
rank(A)
b = rand(4, 1);
x = rref([A, b])
disp("Inconsistent system.")
x0 = (A' * A) \ (A' * b)
disp("Not a unique solution.")
error = b - A * x0
check_if_perpendicular = error' * A
disp("The resulting vector is virtually 0, so the error vector is perpendicular to the column space of A.")
errlen = norm(b - A * x0)
x = rand(4, 1);
errlen = norm(b - A * x)
x = rand(4, 1);
errlen = norm(b - A * x)
x = rand(4, 1);
errlen = norm(b - A * x)

disp(" ")

disp("Problem 4: ")
[Q R] = qr(A, 0);
max(max(Q * R - A))
max(max(Q' - inv(Q)))

disp(" ")

disp("Problem 5: ")
X = [1, 3 * cos(.88);1, 2.3 * cos(1.1); ...
     1, 1.65 * cos(1.42);1, 1.25 * cos(1.77); ...
     1, 1.01 * cos(2.14)];
y = [3; 2.3; 1.65; 1.25; 1.01];
B = (X' * X) \ (X' * y)
disp("The orbit is an ellipse because e < 1.")
r = B(1, 1) / (1 - B(2, 1) * cos(4.6))

disp(" ")

disp("Problem 6: ")
X = [1, 0, 0, 0; ...
     1, 1, 1, 1; ...
     1, 2, 2^2, 2^3; ...
     1, 3, 3^2, 3^3; ...
     1, 4, 4^2, 4^3; ...
     1, 5, 5^2, 5^3; ...
     1, 6, 6^2, 6^3; ...
     1, 7, 7^2, 7^3; ...
     1, 8, 8^2, 8^3; ...
     1, 9, 9^2, 9^3; ...
     1, 10, 10^2, 10^3; ...
     1, 11, 11^2, 11^3; ...
     1, 12, 12^2, 12^3];
y = [0; 8.8; 29.9; 62; 104.7; 159.1; 222; 294.5; 380.4; 471.1; 571.7; 686.8; 809.2];
B = (X' * X) \ (X' * y)
disp("y(t) = -.8558 + 4.7025t + 5.5554t^2 - .0274t^3")
disp("v(t) = dy/dt = 4.7025 + 11.1108t - .0822t^2")
velocity = 4.7025 + 11.1108 * (4.5) - .0822 * (4.5)^2

diary off