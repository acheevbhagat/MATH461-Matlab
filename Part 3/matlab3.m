diary ec3.txt

% Problem 1
disp("Problem 1")
A = [
    7 6 -4 1;
    -5 -1 0 -2;
    9 -11 7 -3;
    19 -9 7 1
    ];
w = [1; 1; -1; -3];
AREF = rref([A w])
ANUL = A * w;
disp("w is in the column space of A because AREF is consistent where")
disp("AREF is the reduced echelon matrix built from A augmented by w.")
disp("w is not in the null space of A because ANUL is not the zero")
disp("vector where ANUL is A multiplied by w.")

% Problem 2
disp("Problem 2")
B = randi([-1000, 1000], [6 3]);
C = randi([-1000, 100], [3 8]);
A = B * C
ARANK = rank(A)
ANUL = null(A)
ANULRANK = rank(ANUL)
AxANUL = max(max(abs(A * ANUL)))
disp("ANUL vectors are indeed in the null space because when multiplied")
disp("back with A the results are 0. In addition they are linearly")
disp("independent because their rank is 5.")


% Problem 3
disp("Problem 3")
A = [8; 9; -3; -6; 0];
B = [4; 5; 1; -4; 4];
C = [-1; -4; -9; 6; -7];
D = [6; 8; 4; -7; 10];
E = [-1; 4; 11; -8; -7];
F = [A B C D E]
FREF = rref([A B C D E])
disp("The first three columns are F are independent, so they would form")
disp("the basis of the space spanned by the vectors.")

% Problem 4
disp("Problem 4")
A = []
for i = 1:4
    x = sin(i);
    y = cos(2 * i);
    z = sin(i) * cos(i);
    B = [i x y z];
    A = [A; B]
end
detA = det(A)
disp("The set of functions is linearly independent because its determinant is not 0.")

% Problem 5
disp("Problem 5")
A = [
    [0 0 7 3];
    [-2 0 1 5];
    [0 -2 1 0];
    [2 -6 16 1]
    ];
rankA = rank(A)
disp("The coefficients of the polynomials don't result in a rank of 4")
disp("so the polynomials don't form the basis of P3.")

% Problem 5
disp("Problem 6")
Q = [
    [0.90 0.01 0.09];
    [0.01 0.90 0.01];
    [0.09 0.09 0.90]
    ];
for i = 10:10:100
    Q^i
end
I = eye(3);
P = null(Q - I)
R = (Q * P) - P

diary off