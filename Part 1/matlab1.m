diary ec1.txt

% Problem 1
disp("Problem 1: ")
A = randi([-5, 5], [4, 6])
AREF = rref(A)

% Problem 2
disp("Problem 2: ")
U = rand(6, 1)
b = A * U
x = A \ b
sol = [A b]

% Problem 3
disp("Problem 3: ")
A = rand(4, 4)
B = rand(4, 4)
if ((A * B) - (B * A)) == zeros(4, 4)
    disp("AB equals BA")
else
    disp("AB does not equal BA")
end

% Problem 4
disp("Problem 4: ")
mk_row = @(t) [t^0, t^1, t^2, t^3, t^4, t^5];
A = [mk_row(0); mk_row(2); mk_row(4); mk_row(6); mk_row(8); mk_row(10)];
b = [0; 2.9; 14.8; 39.6; 74.3; 119]
x = A \ b
try
    A = [mk_row(0); mk_row(2); mk_row(4); mk_row(6); mk_row(8)];
    x = A \ b
catch
end

% Problem 5
disp("Problem 5: ")
A = [12, -7, 11, -9, 5; 
    -9, 4, -8, 7, -3; 
    -6, 11, -7, 3, -9; 
    4, -6, 10, -5, 12];
AREF = rref(A)

% Problem 6
disp("Problem 6: ")
A = [4, -2, 5, -5; 
    -9, 7, -8, 0; 
    -6, 4, 5, 3; 
    5, -3, 8, -4];
AREF = rref(A)
b = [0; 0; 0; 0];
x = A \ b

diary off