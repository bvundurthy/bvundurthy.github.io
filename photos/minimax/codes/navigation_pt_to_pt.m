close all
clear variables
clc


f1=figure (1);
hold on;
axis ([-6 30 0.3 18.5]);
% axis equal;

P = [07.31  16.31  23.35  18.14  07.09  01.75;
     18.01  18.01  13.81  02.28  00.88  10.77;
         0      0      0      0      0      0];
B=[04.57  06.31  08.77  10.97      12.47  16.17  19.97  19.97      06.23  14.57  19.08  10.17      10.42  13.17  15.22  14.05;
   09.41  13.90  15.01  14.51      15.21  16.51  13.61  10.71      05.82  07.31  05.90  04.41      09.66  11.01  11.00  08.93;
       0      0      0      0          0      0      0      0          0      0      0      0          0      0      0      0];

M=[12.95  11.83;
   09.76  09.38;
       0      0];

C=[P B M];  
P_len=length(P(1,:));   % number of agents
B_len=length(B(1,:));   % number of agents
for i=1:P_len
    loc_square(P(:,i),0.25,'b'); 
end


text(P(1,1)-2,P(2,1),'P_6','Fontsize',22,'Fontweight','bold');
text(P(1,2)+0.5,P(2,2),'P_5','Fontsize',22,'Fontweight','bold');
text(P(1,3)+0.5,P(2,3),'P_4','Fontsize',22,'Fontweight','bold');
text(P(1,4)+0.5,P(2,4),'P_3','Fontsize',22,'Fontweight','bold');
text(P(1,5)-2,P(2,5),'P_2','Fontsize',22,'Fontweight','bold');
text(P(1,6)-2,P(2,6),'P_1','Fontsize',22,'Fontweight','bold');

seq=[   1   23  0   0   0;
        2   23  0   0   0;
        3   23  0   0   0;
        4   23  0   0   0;
        5   23  0   0   0;
        6   23  0   0   0];


seq_len=length(seq(1,:));
line_len=zeros(P_len,seq_len-1);
for i=1:P_len
    for j=2:seq_len
        if seq(i,j)==0
            line_len(i,j-1)=0;
        else
            line_len(i,j-1)=int8((round(norm2(C(:,seq(i,j-1)),C(:,seq(i,j))),1)/0.1));
        end
    end
end    

exit=ones(1,P_len);
time=zeros(1,P_len);
j=repmat(2,1,P_len);
while sum(exit)~=0
    for i=1:P_len
        if seq(i,j(i))~=0
            a=time(i);
            b=line_len(i,j(i)-1)-a;
            P_a=C(:,seq(i,j(i)-1));
            P_b=C(:,seq(i,j(i)));
            if b<0
                j(i)=j(i)+1;
                time(i)=0;
            else
                pt=section_point(P_a,P_b,a,b);
                line([P_a(1) pt(1)],[P_a(2) pt(2)],'linewidth',2.5,'color','r');
            end
        else
            exit(i)=0;
        end
        time(i)=time(i)+1;
    end
    pause(0.03);
end
loc_square(M(:,1),0.25,'r'); 
text(M(1,1)+0.7,M(2,1)-0.5,'P_M','Fontsize',22,'Fontweight','bold');


figure(2)
axis ([-6 30 0.3 18.5]);
hold on;

for i=1:P_len
    loc_square(P(:,i),0.25,'b'); 
end
loc_square(M(:,1),0.25,'r'); 

text(P(1,1)-2,P(2,1),'P_6','Fontsize',22,'Fontweight','bold');
text(P(1,2)+0.5,P(2,2),'P_5','Fontsize',22,'Fontweight','bold');
text(P(1,3)+0.5,P(2,3),'P_4','Fontsize',22,'Fontweight','bold');
text(P(1,4)+0.5,P(2,4),'P_3','Fontsize',22,'Fontweight','bold');
text(P(1,5)-2,P(2,5),'P_2','Fontsize',22,'Fontweight','bold');
text(P(1,6)-2,P(2,6),'P_1','Fontsize',22,'Fontweight','bold');
text(M(1,1)+0.15,M(2,1)+0.6,'P_M','Fontsize',22,'Fontweight','bold');


for i=1:4:B_len-1
    patch(B(1,i:i+3),B(2,i:i+3),'k','FaceAlpha',0.3,'linewidth',1.8); 
end

seq=[   1   10   19   24   0   0;
        2   11   19   24   0   0;
        3   14   22   24   0   0;
        4   17   24    0   0   0;
        5   15   24    0   0   0;
        6    7   24    0   0   0];


seq_len=length(seq(1,:));
line_len=zeros(P_len,seq_len-1);
for i=1:P_len
    for j=2:seq_len
        if seq(i,j)==0
            line_len(i,j-1)=0;
        else
            line_len(i,j-1)=int8((round(norm2(C(:,seq(i,j-1)),C(:,seq(i,j))),1)/0.1));
        end
    end
end    

exit=ones(1,P_len);
time=zeros(1,P_len);
j=repmat(2,1,P_len);
while sum(exit)~=0
    for i=1:P_len
        if seq(i,j(i))~=0
            a=time(i);
            b=line_len(i,j(i)-1)-a;
            P_a=C(:,seq(i,j(i)-1));
            P_b=C(:,seq(i,j(i)));
            if b<0
                j(i)=j(i)+1;
                time(i)=0;
            else
                pt=section_point(P_a,P_b,a,b);
                line([P_a(1) pt(1)],[P_a(2) pt(2)],'linewidth',2.5,'color','r');
            end
        else
            exit(i)=0;
        end
        time(i)=time(i)+1;
    end
    pause(0.03);
end
loc_square(M(:,2),0.25,'r'); 
text(M(1,2)-1,M(2,2)-1,'P_G','Fontsize',22,'Fontweight','bold');





% r1=norm2(C(:,seq(1,1)),C(:,seq(1,2)));
% r2=norm2(C(:,seq(2,1)),C(:,seq(2,2)))+norm2(C(:,seq(2,2)),C(:,seq(2,3)));
% r3=norm2(C(:,seq(3,1)),C(:,seq(3,2)));
% circle_blue_bold(C(1,seq(1,2)),C(2,seq(1,2)),r1);
% circle_blue_bold(C(1,seq(2,3)),C(2,seq(2,3)),r2);
% circle_blue_bold(C(1,seq(3,2)),C(2,seq(3,2)),r3);
% 
% r_total=r1+norm2(C(:,seq(1,2)),C(:,seq(1,3)));
% % circle_blue_bold(C(1,seq(1,3)),C(2,seq(1,3)),r_total-0.2);
% c_draw=circle_blue_bold(C(1,seq(1,3))-0.1,C(2,seq(1,3)),r_total-0.1);

