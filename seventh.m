clear;
close all;
clc;
X = input("enter linear independent matrix :");
% example to paste
% X = [1 1 1;1 -1 1;1 1 -1]
Q = gramSchmidt(X);
disp('Original matrix X:');
disp(X);

disp('Orthogonal matrix U:');
disp(Q);