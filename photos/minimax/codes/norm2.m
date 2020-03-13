function [dist] = norm2(P,Q)
% norm2 is used to find the Euclidean distance between two points with
% syntax norm2(P(:,1),P(:,2))
dist=sqrt((P(1)-Q(1))^2+(P(2)-Q(2))^2);
end
