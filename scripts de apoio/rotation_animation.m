%% >> help MATLAB
%
% _by_ NEEET - Núcleo de Estudantes de Engenharia Eletrónica e Telecomunicações
%
%
% *Rotação animada*:
%

clear all; close all; clc;

% retângulo [2x5]
v = [0 6 6 0 0; 0 0 2 2 0];

% eixos do gráfico no formato [xmin xmax ymin ymax]
eixos = [-7 7 -7 7];

figure(1)
for t= 0:pi/20:2*pi
    % Para cada um dos 40 valores de ângulo contidos entre 0 e 2*pi
    A = [cos(t) -sin(t); sin(t) cos(t)];        % [2x2]
    u = A * v;                                  % [2x2] * [2x5] = [2x5]
    
    % plot da nova posição do retângulo, forçando os valores máximos e
    % mínimos dos eixos 
    plot(u(1, :), u(2, :));
    axis(eixos)
    grid minor
    
    xlabel('Eixo das abcissas (xx)')
    ylabel('Eixo das ordenadas (yy)')
    title('Rotação Retângulo')
    
    drawnow;        % forçar o desenho
    pause(0.1)      % esperar por 0.1 segundos
end
