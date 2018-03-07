% Demo de vetorização de algoritmos
% Produto de matrizes

clear; clc

N= 500;

A= rand(N);
B= rand(N);
C1= zeros(N);

tic
for l= 1:N,
    for c= 1:N,
        s= 0;
        for n= 1:N,
            s= s + A(l,n)*B(n,c);
        end
        C1(l,c)= s;
    end
end
T1= toc

tic
C2= A*B;
T2= toc

% Calcula a relacao de tempos de execicao
T1/T2

% Verifica que o resultado é o mesmo
max(max(C2-C1))
