
function [ S ] = match( M1, M2, display_flag )
    if nargin==2; display_flag=0; end
    M1=M1(M1(:,3)<5,:);
    M2=M2(M2(:,3)<5,:);    
    count1=size(M1,1); count2=size(M2,1);  
    S=0;            
    for i=1:count1
        T1=transform(M1,i);
        for j=1:count2
            if M1(i,3)==M2(j,3)
                T2=transform(M2,j);
                for a=-5:5                      
                    T3=transform2(T2,a*pi/180);
                    sm=score(T1,T3);
                    if S<sm
                        S=sm;
                       
                    end                
                end
            end
        end
    end
    end