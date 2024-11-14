clear;
close all;
clc;
p = input("please enter p matrix :");
o = input("please enter o matrix :");
tetta = input("please enter tetta :");
tetta = -tetta / 360 * 2 * pi;
rotation_matrix = [cos(tetta) -sin(tetta) ; sin(tetta) cos(tetta)];
out = p - o;
out = out * rotation_matrix ;
disp("new  put is :")
disp(transpose(out))