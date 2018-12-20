diary ec4.txt
disp("Problem 1: ") 
A = rand(6); 
[P D] = eig(A); 
eigval_prod = D(1, 1) * D(2, 2) * D(3, 3) * D(4, 4) * D(5, 5) * D(6, 6) 
poly(A) 
det(A) 
disp("") 
disp("Problem 2: ") 
A = [-6, 4, 0, 9; -3, 0, 1, 6; -1, -2, 1, 0; -4, 4, 0, 7]; 
[P D] = eig(A) 
check = max(max(abs(P * D * inv(P) - A))) 
disp("The answer is correct (aside from some rounding errors).") 
disp("") 
disp("Problem 3: ") 
A = [15, -66, -44, -33; 0, 13, 21, -15; 1, -15, -21, 12; 2, -18, -22, 8]; 
[P D] = eig(A) 
disp("The basis consists of the vectors in matrix P.") 
disp("") 
disp("Problem 4: ") 
A = [1, -.8; 4, -2.2]; 
eigvals = roots(poly(A)); 
eig_vec = null(A - (-.6 - .8i) * eye(2)); 
P = [real(eig_vec), imag(eig_vec)] 
C = inv(P) * A * P 
disp("") 
disp("Problem 5: ") 
A = [1.1, .2; .6, .8]; 
x_0 = [1; -4]; 
x_1 = [-1; 4]; 
x_2 = [2; -5]; 
x_3 = [-2; 5]; 
T_0 = x_0; 
T_1 = x_1; 
T_2 = x_2; 
T_3 = x_3; 
for j = 1:9 
    x_0 = A * x_0; 
    T_0 = [T_0, x_0]; 
    x_1 = A * x_1; 
    T_1 = [T_1, x_1]; 
    x_2 = A * x_2; 
    T_2 = [T_2, x_2]; 
    x_3 = A * x_3; 
    T_3 = [T_3, x_3]; 
end
figure
plot(T_0(1, :), T_0(2, :), 'or'), 
grid 
hold on; 
plot(T_1(1, :), T_1(2, :), '+g'), 
grid 
plot(T_2(1, :), T_2(2, :), '*b'), 
grid
plot(T_3(1, :), T_3(2, :), 'dm'), 
grid 
hold off; 
disp("The origin of the dynamical system looks like a saddle point.") 
[~, D] = eig(A) 
disp("The eigenvalues support this claim because one is greater than 1, while the other is less than 1.") 
disp("") 
disp("Problem 6: ") 
A = [.8, .5; -.1, 1]; 
x_0 = [1; -4]; 
x_1 = [-1; 4]; 
x_2 = [2; -5]; 
x_3 = [-2; 5]; 
T_0 = x_0; 
T_1 = x_1; 
T_2 = x_2; 
T_3 = x_3; 
for j = 1:49 
    x_0 = A * x_0; 
    T_0 = [T_0, x_0];
    x_1 = A * x_1; 
    T_1 = [T_1, x_1]; 
    x_2 = A * x_2; 
    T_2 = [T_2, x_2]; 
    x_3 = A * x_3; 
    T_3 = [T_3, x_3]; 
end
figure
plot(T_0(1, :), T_0(2, :), 'or'), 
grid 
hold on; 
plot(T_1(1, :), T_1(2, :), '+g'), 
grid 
plot(T_2(1, :), T_2(2, :), '*b'), 
grid 
plot(T_3(1, :), T_3(2, :), 'dm'), 
grid 
hold off; 
disp("The origin of the dynamical system looks like either an attractor or a repeller.") 
[~, D] = eig(A) 
eigval_1 = abs(D(1, 1)) 
eigval_2 = abs(D(2, 2)) 
disp("The absolute value of the eigenvalues show that the system is an attractor because they are less than 1.")
diary off