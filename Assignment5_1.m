function [mmr,mmm]=minimax(M)
    mmr=abs(max(M')-min(M'));
    mmm=(max(max(M'))-min(min(M')));
end
