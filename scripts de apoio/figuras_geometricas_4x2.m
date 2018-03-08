%% >> help MATLAB
%
% _by_ NEEET - Núcleo de Estudantes de Engenharia Eletrónica e Telecomunicações
%
%
% Figuras Geométricas em 2D  usando uma matriz [4 x 2]:
%
% * Translação
% * Ampliação
%
% Na matriz [4x2], as colunas selecionam as coordenadas e as linhas os
% valores dessas coordenadas
%

clear all; close all; clc;

%% Definir v como uma matriz [4 x 2] (4 linhas, 2 colunas)
%
v = [1 1 ; 3 1 ; 2 3 ; 1 1];

% Criar uma nova figura
figure(1)
plot(v(:, 1), v(:, 2));
xlabel('Eixo das abcissas (xx)')
ylabel('Eixo das ordenadas (yy)')
title('Triângulo original')
grid on

% Diferentes formas de criar a matriz para a translação
d1 = [1 0 ; 1 0 ; 1 0 ; 1 0];

% concatenar uma coluna de 1 com uma coluna de 0
d2 = [ones(4, 1) zeros(4, 1)];

% repetir a matrix [1 0] quatro vezes ao longo da linhas e uma vezes ao
% longo das colunas  
d3 = repmat([1 0], 4, 1);

u1 = v + d1;
u2 = v + d2;
u3 = v + d3;

% subplot permite criar várias janelas de plot dentro da mesma figura
figure(2)
subplot(221)
plot(v(:, 1), v(:, 2));
xlabel('Eixo das abcissas (xx)')
ylabel('Eixo das ordenadas (yy)')
title('Triângulo original')
legend('v')
grid on

subplot(222)
plot(v(:, 1), v(:, 2));
hold on
plot(u1(:, 1), u1(:, 2));
hold off
xlabel('Eixo das abcissas (xx)')
ylabel('Eixo das ordenadas (yy)')
title('Translação d1')
legend('v', 'u1')
grid on

subplot(223)
plot(v(:, 1), v(:, 2));
hold on
plot(u2(:, 1), u2(:, 2));
hold off
xlabel('Eixo das abcissas (xx)')
ylabel('Eixo das ordenadas (yy)')
title('Translação d2')
legend('v', 'u2')
grid on

subplot(224)
plot(v(:, 1), v(:, 2));
hold on
plot(u3(:, 1), u3(:, 2));
hold off
xlabel('Eixo das abcissas (xx)')
ylabel('Eixo das ordenadas (yy)')
title('Translação d3')
legend('v', 'u3')
grid on

%% Ampliação
% Como estamos a usar uma matriz [4x2], a matriz identidade tem de ter as
% dimensões [4x4], de modo a ser possível a multiplicação de matrizes
%
% Relembrar que o nº de colunas da 1ª matriz tem de ser igual ao nº de
% linhas da segunda matriz
%

% Matriz identidade [4x4]
A = eye(4); 

% Definir um fator de ampliação
c = 4;

x = c * A * v;

figure(3)
plot(v(:, 1), v(:, 2));
hold on
plot(x(:, 1), x(:, 2));
hold off
xlabel('Eixo das abcissas (xx)')
ylabel('Eixo das ordenadas (yy)')
title('Ampliação')
legend('v', 'x')
grid on

