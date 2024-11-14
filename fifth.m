clear;
close all;
clc;
A = [-4 14 0 ; -5 13 0 ; -1 0 2];
x = input("enter ur first guess matrix: ");
x = transpose(x);
err = 10;
while(err >0.00001)
    xnew = A*x;
    max_x = max(xnew);
    xnew = xnew /10 ;
    err = abs(mean(xnew-x,"all"));
    x = xnew;
end
landa = (transpose(x) * A * x)/(transpose(x)*x);
fprintf("the biggest eigenvalue is : %d \n",landa)