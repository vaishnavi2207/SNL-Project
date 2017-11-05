

function [ T ] = transform( M, i )
    Count=size(M,1);
    XRef=M(i,1); YRef=M(i,2); ThRef=M(i,4);
    T=zeros(Count,4);
   
	for i=1:Count
        B=[M(i,1)-XRef; M(i,2)-YRef; M(i,4)-ThRef];
        T(i,1:3)=B;
        T(i,4)=M(i,3);
    end
end