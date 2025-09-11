function big = ZhouK_Lab2(A)

% reset the output variable (necessary for reusing this code for higher order matrices)
big = 0;

% this for loop will parse through the 4 columns of the 4x4 matrix
for i = 1:4
    
    % store the value to be multiplied to the 3x3 matrix term
    term = A(1,i);

    % initialize a copy of the 4x4 matrix
    M = A;

    % create a 3x3 matrix by blocking out row 1 and the column
    % corresponding to the index of term
    M(1,:) = [];
    M(:,i) = [];
    
    % reset the small variable
    small = 0;
    
    % this for loop will parse through the 3 columns of the created 3x3
    % matrices
    for j = 1:3
        
        % store the value to be multiplied ot the 2x2 matrix term
        term2 = M(1,j);

        % initialize a copy of the 3x3 matrix
        N = M;

        % create a 2x2 matrix by blocking out row 1 and the column
        % corresponding to the index of term2
        N(1,:) = [];
        N(:,j) = [];

        % calculate the determinant of the 2x2 matrix
        det = (N(1,1)*N(2,2) - N(1,2)*N(2,1));

        % calculate the determinant of the 3x3 matrix
        small = small + ((-1)^(j+1))*term2*det

    end
    
    % calcualte the determinant of the 4x4 matrix
    big = big + ((-1)^(i+1))*term*small;

end