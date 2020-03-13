% This function plots circle with center at (x,y) and radius 'r' in the
% form circle(x,y,r)
function h = circle_blue_bold(x,y,r)
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit,'LineWidth',3.5,'color','b');
end