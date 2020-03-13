function [h]=loc_square(temp,size,color)
    surr=[temp(1)-size temp(1)+size temp(1)+size temp(1)-size;
          temp(2)-size temp(2)-size temp(2)+size temp(2)+size];
    h=patch(surr(1,:),surr(2,:),color,'FaceAlpha',1);
end