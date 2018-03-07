% Gera valores em torno de uma reta
clear; clc

a= 1.5;     % Declive da reta
N= 100;      % Numero de pontos
x= rand(1,N);
y= a*x+0.01*randn(1,N);

figure(1)
plot(x,y,'o')

