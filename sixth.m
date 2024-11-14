clear;
close all;
clc;
A = input("please enter ur matrix :");
% matrix to copy:
% [1 2 4 1 3 7 9 3;3 5 6 9 9 6 2 4;4 3 5 8 4 6 6 3;1 2 8 9 6 4 2 5;3 2 6 7 8 5 6 2;7 8 5 4 7 5 9 4;0 5 6 4 0 2 8 5;8 6 4 0 5 0 5 3]
[n, m] = size(A);
if n ~= m
    error('Matrix must be square');
end
L = eye(n);
U = A;
for k = 1:n-1
    for i = k+1:n
        if(U(k,k) == 0)
            continue
        end
        L(i, k) = U(i, k) / U(k, k);
        U(i, :) = U(i, :) - L(i, k) * U(k, :);
    end
end
det_U = 1;
for i = 1:n
    det_U = det_U * U(i,i);
end
fprintf("the det is : %d \n" , det_U)
fprintf("and the real det is : %d \n",det(A))