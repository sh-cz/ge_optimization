%����
%���������pop����������Ⱥ��pm���������
%���������newpop��������Ⱥ
function [newpop]=mutation(pop,pm)
[px,py]=size(pop);
newpop=ones(size(pop));
for i=1:px
    newpop(i,:)=pop(i,:);
    if(rand<pm)
        mpoint=round(rand*py);
        if mpoint<=0
            mpoint=1;
        end
        if newpop(i,mpoint)==0
            newpop(i,mpoint)=1;
        else
            newpop(i,mpoint)=0;
        end
    end
end
