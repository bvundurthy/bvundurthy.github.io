% This algorithm finds the point dividing Pa and Pb in a ration of r1:r2
function[P_section]=section_point(Pa, Pb, r1, r2)
% close all
% clear all
% clc
% P=[0   10;
%    0    0;
%    0    0;];
% r1=4;
% r2=6;
% addpath('E:\Dropbox\Functions_MATLAB');
P=[Pa Pb];
P_section=(r1*P(:,2)+r2*P(:,1))/(r1+r2);
end