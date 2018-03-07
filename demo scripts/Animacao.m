% Animaao de uma sinusoide
clear all

t= 0:pi/50:4*pi;

figure(gcf)
y= sin(t);
plot(t,y)
axis off

a= get(gca,'children');
for n= 1:4
    for f= [1:0.1:4, 4:-0.1:1],
        y= sin(f*t);
        set(a,'XData',t,'YData',y,'Linewidth',2);
        drawnow;
        pause(0.01)
    end
end
