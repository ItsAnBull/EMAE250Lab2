function output = ZhouK_Lab2(m)

big = 0;

% ---------------------
for i = 1:4

    term = A(1,i);
    M = A;
    M(1,:) = [];
    M(:,i) = [];
    small = 0;

    for j = 1:3

        term2 = M(1,j);
        N = M;
        N(1,:) = [];
        N(:,j) = [];
        det = (N(1,1)*N(2,2) - N(1,2)*N(2,1));
        small = small + term2*det;

    end

    big = big + term*small;
end