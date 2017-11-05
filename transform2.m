
function [ Tnew ] = transform2( T, alpha )
    Count=size(T,1);
    Tnew=zeros(Count,4);
    
    for i=1:Count
        B=T(i,:)-[0 0 alpha 0];
        Tnew(i,:)=B';
    end
end