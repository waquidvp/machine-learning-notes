a = 3; %This is a comment;

b = 'hi';

c = pi;

matrix = [1, 2; 3,4; 5,6];

identity = eye(10);

inverseMatrix = pinv(matrix);

disp(inverseMatrix);

w = -6 + sqrt(10) * (randn(1, 10000));

hist(w, 50);