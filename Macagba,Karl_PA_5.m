R = [5, -2. 0, 7; 1, 3, -4, 2; 6, 0, 8, -1]
Z = [2+3i, -1 + 4i, 5-2i; -3+i, 6, 2+5i]

transR = transpose(R)
quotR = R'  
dR = R.'

transZ = transpose(Z)
quotZ = Z'  
dZ = Z.'

%% Part 2 

X =[2, -1, 3, 2; 1, 4, -2, 1; 3, 2, 1,-1; -2, 3, 4, 2]
Y = [16, -7, 6, 7]';

x_inv = inv(X) * Y;

Det_x = det(X)
x_cramer = zeros(4, 1);

disp('x_inv =');
disp(x_inv);

disp('x_cramer =');
disp(x_cramer);

disp('det(X) =');
disp(Det_x);

disp('norm(x_inv - x_cramer) =');
disp(norm(x_inv - x_cramer));

disp('norm(X*x_inv - Y) =');
disp(norm(X*x_inv - Y));