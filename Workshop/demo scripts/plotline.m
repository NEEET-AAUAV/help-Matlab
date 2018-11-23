function plotline(V,eixos)
% FUNCTION PLOTLINE(V)
% Esta funçao desenha a figura geometrica armazenada na matriz linha V.
% Cada coluna da matriz V tem as coordenadas x,y de um ponto, sendo os 
% pontos sucessivos unidos por segmentos de recta


plot(V(1,:),V(2,:))
minx= min(V(1,:));
maxx= max(V(1,:));
miny= min(V(2,:));
maxy= max(V(2,:));
t= 4;
if nargin == 1,
    axis([minx-abs(minx)/t  maxx+abs(minx)/t  miny-abs(miny)/t maxy+abs(miny)/t]);
else
    axis(eixos);
end
