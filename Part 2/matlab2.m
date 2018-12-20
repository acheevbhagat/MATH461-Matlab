diary ex2.txt

% Problem 1
disp("Problem 1: ")
A = rand(10, 10);
B = rand(10, 10);
C = A * B;
D = B' * A';
E = inv(B) * inv(A);
DCT = max(max(abs(D - C')))
ECINV = max(max(abs(E - inv(C))))

% Problem 2
disp("Problem 2: ")
A = rand(6, 6);
AINV = rref([A eye(6)]);
D = AINV(:,7:12);
INVDIFF = max(max(abs(D - inv(A))))

% Problem 3
disp("Problem 3: ")
A = rand(7, 7);
b = rand(7,1);
xINV = A \ b;
xREF = rref([A b]);
xREF = xREF(:,8);
xDIFF = max(max(abs(xINV - xREF)))

% Problem 4
disp("Problem 4: ")
A = rand(7, 7);
B = rand(7, 7);
disp("det(AB) = det(A)det(B) : ")
disp((det(A * B) - det(A) * det(B)))
disp("det(A + B) = det(A) + det(B) : ")
disp(det(A + B) - (det(A) + det(B)))
disp("det(A^-1) = 1 / det(A) : ")
disp((det(inv(A)) - (1 / det(A))))
disp("det([A 0; 0 B]) = det(A) * det(B) : ")
disp((det([A eye(7); eye(7) B]) - (det(A) * det(B))))

% Problem 5
disp("Problem 5: ")
for i=1:5
    disp("Iteration " + i)
    A = rand(4, 5);
    TA = det(A' * A)
    AT = det(A * A')
end
disp("When A is a reactangular matrix with more columns than rows, A' * A will" + ...
    " have a determinant of 0 and will not be invertible whereas A * A' will not" + ...
    " and will be invertible.")

% Problem 6
disp("Problem 6: ")
A = [1, 1, 1; 
    1, 2, 2; 
    1, 2, 3;];
B = [1, 1, 1, 1; 
    1, 2, 2. 2; 
    1, 2, 3, 3; 
    1, 2, 3, 4;];
C = [1, 1, 1, 1, 1; 
    1, 2, 2. 2, 2; 
    1, 2, 3, 3, 3; 
    1, 2, 3, 4, 4; 
    1, 2, 3, 4, 5];
detA = det(A)
detB = det(B)
detC = det(C)
disp("The determinant of the nxn matrix would be 1.")
disp("Confirm your guess by using row operations to evaluate that determinant")

% Problem 7
disp("Problem 7: ")
V = rand(10, 10);
U = eye(10) + 1000 * triu(V, 1);
detU = det(U)
detUT = det(U')
detUdetUT = det(U*U')

diary off