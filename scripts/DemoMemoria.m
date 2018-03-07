% Demo Memoria

clear; clc

N= 100000;

% Por concatenacao
tic
a= [];
for n= 1:N,
    a= [a n];
end
T1= toc


% Com reserva de memoria
tic
a= zeros(1,N);
for n= 1:N,
    a(n)= n;
end
T2= toc

% Geracao do vetor sem ciclos for
tic
a= 1:N;
T3= toc

% Calcula a relacao de tempos de execucao
T1/T3
T2/T3
