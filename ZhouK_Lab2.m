function big = ZhouK_Lab2(A)

% initialize the output variable
big = 0;

% this for loop will parse through the 4 columns of the 4x4 matrix
for i = 1:4
    
    % store the value to be multiplied to the 3x3 matrix in term
    term = A(1,i);

    % initialize a copy of the 4x4 matrix
    M = A;

    % create a 3x3 matrix by blocking out row 1 and the column corresponding to the index of term
    M(1,:) = [];
    M(:,i) = [];
    
    % reset the small variable
    small = 0;
    
    % this column will parse through the terms of the created 3x3 matrices
    for j = 1:3

        term2 = M(1,j);
        N = M;
        N(1,:) = [];
        N(:,j) = [];
        det = (N(1,1)*N(2,2) - N(1,2)*N(2,1));
        small = small + ((-1)^(j+1))*term2*det

    end

    big = big + ((-1)^(i+1))*term*small;

end