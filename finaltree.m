clc
close all
clear all
a=imread('37_3.bmp');

%  I1 = im2single(imread('19_7.bmp'));
%  imshow(I1)
%  I2 = im2single(imread('37_5_2.bmp'));
%  imshow(I2)
%  halphablend = vision.AlphaBlender;
%  a = step(halphablend,I1,I2);
%  
 figure;
imshow(a);title('combined image');
a=imresize(a,[120 120]);
[m n]=size(a);
%a=[1 3 5; 3 8 9; 19 24 2];
%disp(a);

%figure;imshow(a);
disp('Original image');

%figure;imhist(a);
title('original image');
for i=1:m
    for j=1:n
        fprintf('%d\t',a(i,j));
    end
        fprintf('\n');
end

% Performing Permutation
for i=1:m-1
    for j=1:n-1
        k=a(i,j);
        a(i,j)=a(m-i,n-j);
        a(m-i,n-j)=k;
   % if (i==1)
   % if (j==1)
   %     break;
   % end
   % end
    
    if (i==j)
        break;
    end
    end
end

disp('Permuted image');
for i=1:m
    for j=1:n
        fprintf('%d\t',a(i,j));
    end
        fprintf('\n');
end

%Snake and Ladder
fprintf('\nPerforming Snake and Ladder\n');
for i=1:m
    for j=1:n
    if(i==10)
        if(j==2)
            a(8,5)=a(8,5)+a(i,j);
            a(i,j)=0;
        end
    end
    if(i==8)
        if(j==2)
        a(5,8)=a(5,8)+a(i,j);
        a(i,j)=0;
        end
    end
    if(i==7)
        if(j==3)
        a(1,3)=a(1,3)+a(i,j);
        a(i,j)=0;
        end
    end
    end
    if(i==4)
        if(j==9)
        a(2,6)=a(2,6)+a(i,j);
        a(i,j)=0;
        end
    end
    
    if(i==9)
        if(j==8)
        a(5,4)=a(5,4)+a(i,j);
        a(i,j)=0;
        end
    end
    if(i==7)
        if(j==9)
        a(10,7)=a(10,7)+a(i,j);
        a(i,j)=0;
        end
    end
    if(i==1)
        if(j==2)
        a(9,6)=a(9,6)+a(i,j);
        a(i,j)=0;
        end
    end
    if(i==2)
        if(j==1)
        a(4,7)=a(4,7)+a(i,j);
        a(i,j)=0;
        end
    end
    if(i==2)
        if(j==4)
        a(4,10)=a(4,10)+a(i,j);
        a(i,j)=0;
        end
    end
    if(i==3)
        if(j==4)
        a(7,7)=a(7,7)+a(i,j);
        a(i,j)=0;
        end
    end
end
    


for i=1:m
    for j=1:n
        fprintf('%d\t',a(i,j));
    end
        fprintf('\n');
end

fprintf('\nAdding random values:');
prompt={'Enter the value for even rows:'}
title='Random value';
answer=inputdlg(prompt,title);
CON1=str2num(answer{1});


prompt={'Enter the value for odd rows:'}
title='Random value';
answer=inputdlg(prompt,title);
CON2=str2num(answer{1});
tic;
for i=1:m
    for j=1:n
        if((mod(i,2))==0)
            a(i,j)=a(i,j)+CON1;
        else
            a(i,j)=a(i,j)+CON2;
        end
    end
end  
%figure;imhist(a);
fprintf('\nEncrypted image\n');
for i=1:m
    for j=1:n
        fprintf('\t%d',a(i,j));
    end
        fprintf('\n');
end

%////////////////////////////////////////////////////////////

%arr=imread('37_5_2.bmp');
%figure;
%imhist(arr);
%imshow(arr);
%figure;imhist(arr);
%arr=imresize(arr,[120,120]);
%[m n]=size(arr);
count=0;
%b=array(0:7);  
%a=array(0:7);  
i=1;
%inp=array(0:15); 
%out=array(0:15);  
%l0=array(0);
%l1=array(0:1);    
%l2=array(0:3);    
%l3=array(0:7);    
round=1;
for i=1:16
    for j=1:16
        fprintf('%d\t',a(i,j));
    end
        fprintf('\n');
end


%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for first 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(1,1);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(1,2);
inp(3)=a(1,3);
inp(4)=a(1,4);
inp(5)=a(2,1);
inp(6)=a(2,2);
inp(7)=a(2,3);
inp(8)=a(2,4);
inp(9)=a(3,1);
inp(10)=a(3,2);
inp(11)=a(3,3);
inp(12)=a(3,4);
inp(13)=a(4,1);
inp(14)=a(4,2);
inp(15)=a(4,3);
inp(16)=a(4,4);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(1,1)=inp(1);
a(1,2)=l0(1);
a(1,3)=l1(1);
a(1,4)=l1(2);
a(2,1)=l2(1);
a(2,2)=l2(2);
a(2,3)=l2(3);
a(2,4)=l2(4);
a(3,1)=l3(1);
a(3,2)=l3(2);
a(3,3)=l3(3);
a(3,4)=l3(4);
a(4,1)=l3(5);
a(4,2)=l3(6);
a(4,3)=l3(7);
a(4,4)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for second 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(1,5);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(1,6);
inp(3)=a(1,7);
inp(4)=a(1,8);
inp(5)=a(2,5);
inp(6)=a(2,6);
inp(7)=a(2,7);
inp(8)=a(2,8);
inp(9)=a(3,5);
inp(10)=a(3,6);
inp(11)=a(3,7);
inp(12)=a(3,8);
inp(13)=a(4,5);
inp(14)=a(4,6);
inp(15)=a(4,7);
inp(16)=a(4,8);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(1,5)=inp(1);
a(1,6)=l0(1);
a(1,7)=l1(1);
a(1,8)=l1(2);
a(2,5)=l2(1);
a(2,6)=l2(2);
a(2,7)=l2(3);
a(2,8)=l2(4);
a(3,5)=l3(1);
a(3,6)=l3(2);
a(3,7)=l3(3);
a(3,8)=l3(4);
a(4,5)=l3(5);
a(4,6)=l3(6);
a(4,7)=l3(7);
a(4,8)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for third 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(1,9);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(1,10);
inp(3)=a(1,11);
inp(4)=a(1,12);
inp(5)=a(2,9);
inp(6)=a(2,10);
inp(7)=a(2,11);
inp(8)=a(2,12);
inp(9)=a(3,9);
inp(10)=a(3,10);
inp(11)=a(3,11);
inp(12)=a(3,12);
inp(13)=a(4,9);
inp(14)=a(4,10);
inp(15)=a(4,11);
inp(16)=a(4,12);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(1,9)=inp(1);
a(1,10)=l0(1);
a(1,11)=l1(1);
a(1,12)=l1(2);
a(2,9)=l2(1);
a(2,10)=l2(2);
a(2,11)=l2(3);
a(2,12)=l2(4);
a(3,9)=l3(1);
a(3,10)=l3(2);
a(3,11)=l3(3);
a(3,12)=l3(4);
a(4,9)=l3(5);
a(4,10)=l3(6);
a(4,11)=l3(7);
a(4,12)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for fourth 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(1,13);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(1,14);
inp(3)=a(1,15);
inp(4)=a(1,16);
inp(5)=a(2,13);
inp(6)=a(2,14);
inp(7)=a(2,15);
inp(8)=a(2,16);
inp(9)=a(3,13);
inp(10)=a(3,14);
inp(11)=a(3,15);
inp(12)=a(3,16);
inp(13)=a(4,13);
inp(14)=a(4,14);
inp(15)=a(4,15);
inp(16)=a(4,16);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(1,13)=inp(1);
a(1,14)=l0(1);
a(1,15)=l1(1);
a(1,16)=l1(2);
a(2,13)=l2(1);
a(2,14)=l2(2);
a(2,15)=l2(3);
a(2,16)=l2(4);
a(3,13)=l3(1);
a(3,14)=l3(2);
a(3,15)=l3(3);
a(3,16)=l3(4);
a(4,13)=l3(5);
a(4,14)=l3(6);
a(4,15)=l3(7);
a(4,16)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for fifth 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(5,1);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(5,2);
inp(3)=a(5,3);
inp(4)=a(5,4);
inp(5)=a(6,1);
inp(6)=a(6,2);
inp(7)=a(6,3);
inp(8)=a(6,4);
inp(9)=a(7,1);
inp(10)=a(7,2);
inp(11)=a(7,3);
inp(12)=a(7,4);
inp(13)=a(8,1);
inp(14)=a(8,2);
inp(15)=a(8,3);
inp(16)=a(8,4);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(5,1)=inp(1);
a(5,2)=l0(1);
a(5,3)=l1(1);
a(5,4)=l1(2);
a(6,1)=l2(1);
a(6,2)=l2(2);
a(6,3)=l2(3);
a(6,4)=l2(4);
a(7,1)=l3(1);
a(7,2)=l3(2);
a(7,3)=l3(3);
a(7,4)=l3(4);
a(8,1)=l3(5);
a(8,2)=l3(6);
a(8,3)=l3(7);
a(8,4)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for sixth 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(5,5);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(5,6);
inp(3)=a(5,7);
inp(4)=a(5,8);
inp(5)=a(6,5);
inp(6)=a(6,6);
inp(7)=a(6,7);
inp(8)=a(6,8);
inp(9)=a(7,5);
inp(10)=a(7,6);
inp(11)=a(7,7);
inp(12)=a(7,8);
inp(13)=a(8,5);
inp(14)=a(8,6);
inp(15)=a(8,7);
inp(16)=a(8,8);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(5,5)=inp(1);
a(5,6)=l0(1);
a(5,7)=l1(1);
a(5,8)=l1(2);
a(6,5)=l2(1);
a(6,6)=l2(2);
a(6,7)=l2(3);
a(6,8)=l2(4);
a(7,5)=l3(1);
a(7,6)=l3(2);
a(7,7)=l3(3);
a(7,8)=l3(4);
a(8,5)=l3(5);
a(8,6)=l3(6);
a(8,7)=l3(7);
a(8,8)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for seventh 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(5,9);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(5,10);
inp(3)=a(5,11);
inp(4)=a(5,12);
inp(5)=a(6,9);
inp(6)=a(6,10);
inp(7)=a(6,11);
inp(8)=a(6,12);
inp(9)=a(7,9);
inp(10)=a(7,10);
inp(11)=a(7,11);
inp(12)=a(7,12);
inp(13)=a(8,9);
inp(14)=a(8,10);
inp(15)=a(8,11);
inp(16)=a(8,12);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(5,9)=inp(1);
a(5,10)=l0(1);
a(5,11)=l1(1);
a(5,12)=l1(2);
a(6,9)=l2(1);
a(6,10)=l2(2);
a(6,11)=l2(3);
a(6,12)=l2(4);
a(7,9)=l3(1);
a(7,10)=l3(2);
a(7,11)=l3(3);
a(7,12)=l3(4);
a(8,9)=l3(5);
a(8,10)=l3(6);
a(8,11)=l3(7);
a(8,12)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for eigth 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(5,13);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(5,14);
inp(3)=a(5,15);
inp(4)=a(5,16);
inp(5)=a(6,13);
inp(6)=a(6,14);
inp(7)=a(6,15);
inp(8)=a(6,16);
inp(9)=a(7,13);
inp(10)=a(7,14);
inp(11)=a(7,15);
inp(12)=a(7,16);
inp(13)=a(8,13);
inp(14)=a(8,14);
inp(15)=a(8,15);
inp(16)=a(8,16);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(5,13)=inp(1);
a(5,14)=l0(1);
a(5,15)=l1(1);
a(5,16)=l1(2);
a(6,13)=l2(1);
a(6,14)=l2(2);
a(6,15)=l2(3);
a(6,16)=l2(4);
a(7,13)=l3(1);
a(7,14)=l3(2);
a(7,15)=l3(3);
a(7,16)=l3(4);
a(8,13)=l3(5);
a(8,14)=l3(6);
a(8,15)=l3(7);
a(8,16)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for ninth 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(9,1);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(9,2);
inp(3)=a(9,3);
inp(4)=a(9,4);
inp(5)=a(10,1);
inp(6)=a(10,2);
inp(7)=a(10,3);
inp(8)=a(10,4);
inp(9)=a(11,1);
inp(10)=a(11,2);
inp(11)=a(11,3);
inp(12)=a(11,4);
inp(13)=a(12,1);
inp(14)=a(12,2);
inp(15)=a(12,3);
inp(16)=a(12,4);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(9,1)=inp(1);
a(9,2)=l0(1);
a(9,3)=l1(1);
a(9,4)=l1(2);
a(10,1)=l2(1);
a(10,2)=l2(2);
a(10,3)=l2(3);
a(10,4)=l2(4);
a(11,1)=l3(1);
a(11,2)=l3(2);
a(11,3)=l3(3);
a(11,4)=l3(4);
a(12,1)=l3(5);
a(12,2)=l3(6);
a(12,3)=l3(7);
a(12,4)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for tenth 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(9,5);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(9,6);
inp(3)=a(9,7);
inp(4)=a(9,8);
inp(5)=a(10,5);
inp(6)=a(10,6);
inp(7)=a(10,7);
inp(8)=a(10,8);
inp(9)=a(11,5);
inp(10)=a(11,6);
inp(11)=a(11,7);
inp(12)=a(11,8);
inp(13)=a(12,5);
inp(14)=a(12,6);
inp(15)=a(12,7);
inp(16)=a(12,8);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(9,5)=inp(1);
a(9,6)=l0(1);
a(9,7)=l1(1);
a(9,8)=l1(2);
a(10,5)=l2(1);
a(10,6)=l2(2);
a(10,7)=l2(3);
a(10,8)=l2(4);
a(11,5)=l3(1);
a(11,6)=l3(2);
a(11,7)=l3(3);
a(11,8)=l3(4);
a(12,5)=l3(5);
a(12,6)=l3(6);
a(12,7)=l3(7);
a(12,8)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for eleventh 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(9,9);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(9,10);
inp(3)=a(9,11);
inp(4)=a(9,12);
inp(5)=a(10,9);
inp(6)=a(10,10);
inp(7)=a(10,11);
inp(8)=a(10,12);
inp(9)=a(11,9);
inp(10)=a(11,10);
inp(11)=a(11,11);
inp(12)=a(11,12);
inp(13)=a(12,9);
inp(14)=a(12,10);
inp(15)=a(12,11);
inp(16)=a(12,12);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(9,9)=inp(1);
a(9,10)=l0(1);
a(9,11)=l1(1);
a(9,12)=l1(2);
a(10,9)=l2(1);
a(10,10)=l2(2);
a(10,11)=l2(3);
a(10,12)=l2(4);
a(11,9)=l3(1);
a(11,10)=l3(2);
a(11,11)=l3(3);
a(11,12)=l3(4);
a(12,9)=l3(5);
a(12,10)=l3(6);
a(12,11)=l3(7);
a(12,12)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for twelth 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(9,13);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(9,14);
inp(3)=a(9,15);
inp(4)=a(9,16);
inp(5)=a(10,13);
inp(6)=a(10,14);
inp(7)=a(10,15);
inp(8)=a(10,16);
inp(9)=a(11,13);
inp(10)=a(11,14);
inp(11)=a(11,15);
inp(12)=a(11,16);
inp(13)=a(12,13);
inp(14)=a(12,14);
inp(15)=a(12,15);
inp(16)=a(12,16);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(9,13)=inp(1);
a(9,14)=l0(1);
a(9,15)=l1(1);
a(9,16)=l1(2);
a(10,13)=l2(1);
a(10,14)=l2(2);
a(10,15)=l2(3);
a(10,16)=l2(4);
a(11,13)=l3(1);
a(11,14)=l3(2);
a(11,15)=l3(3);
a(11,16)=l3(4);
a(12,13)=l3(5);
a(12,14)=l3(6);
a(12,15)=l3(7);
a(12,16)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for thirteenth 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(13,1);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(13,2);
inp(3)=a(13,3);
inp(4)=a(13,4);
inp(5)=a(14,1);
inp(6)=a(14,2);
inp(7)=a(14,3);
inp(8)=a(14,4);
inp(9)=a(15,1);
inp(10)=a(15,2);
inp(11)=a(15,3);
inp(12)=a(15,4);
inp(13)=a(16,1);
inp(14)=a(16,2);
inp(15)=a(16,3);
inp(16)=a(16,4);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(13,1)=inp(1);
a(13,2)=l0(1);
a(13,3)=l1(1);
a(13,4)=l1(2);
a(14,1)=l2(1);
a(14,2)=l2(2);
a(14,3)=l2(3);
a(14,4)=l2(4);
a(15,1)=l3(1);
a(15,2)=l3(2);
a(15,3)=l3(3);
a(15,4)=l3(4);
a(16,1)=l3(5);
a(16,2)=l3(6);
a(16,3)=l3(7);
a(16,4)=l3(8);
%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////

%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for fourteenth 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(13,5);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(13,6);
inp(3)=a(13,7);
inp(4)=a(13,8);
inp(5)=a(14,5);
inp(6)=a(14,6);
inp(7)=a(14,7);
inp(8)=a(14,8);
inp(9)=a(15,5);
inp(10)=a(15,6);
inp(11)=a(15,7);
inp(12)=a(15,8);
inp(13)=a(16,5);
inp(14)=a(16,6);
inp(15)=a(16,7);
inp(16)=a(16,8);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(13,5)=inp(1);
a(13,6)=l0(1);
a(13,7)=l1(1);
a(13,8)=l1(2);
a(14,5)=l2(1);
a(14,6)=l2(2);
a(14,7)=l2(3);
a(14,8)=l2(4);
a(15,5)=l3(1);
a(15,6)=l3(2);
a(15,7)=l3(3);
a(15,8)=l3(4);
a(16,5)=l3(5);
a(16,6)=l3(6);
a(16,7)=l3(7);
a(16,8)=l3(8);

%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for fifteenth 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(13,9);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(13,10);
inp(3)=a(13,11);
inp(4)=a(13,12);
inp(5)=a(14,9);
inp(6)=a(14,10);
inp(7)=a(14,11);
inp(8)=a(14,12);
inp(9)=a(15,9);
inp(10)=a(15,10);
inp(11)=a(15,11);
inp(12)=a(15,12);
inp(13)=a(16,9);
inp(14)=a(16,10);
inp(15)=a(16,11);
inp(16)=a(16,12);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(13,9)=inp(1);
a(13,10)=l0(1);
a(13,11)=l1(1);
a(13,12)=l1(2);
a(14,9)=l2(1);
a(14,10)=l2(2);
a(14,11)=l2(3);
a(14,12)=l2(4);
a(15,9)=l3(1);
a(15,10)=l3(2);
a(15,11)=l3(3);
a(15,12)=l3(4);
a(16,9)=l3(5);
a(16,10)=l3(6);
a(16,11)=l3(7);
a(16,12)=l3(8);

%figure;
%imhist(a);
%figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////
%///////////////////////FINDING 8 BIY REPRESENTATION OF A NUMBER for sixteenth 4x4////////////////
%printf("\nenter the first element");
%scanf("%d",&inp[0]);
inp(1)=a(13,13);
n=inp(1);
d=n;
fprintf('\n');
while n>1            
fprintf('%d',n);
x=mod(n,2);
count=count+1;
n=n/2;
end
while count<8 

b(i)=0;
i=i+1;
count=count+1;
end
while d>1 
fprintf('%d',d);
x=mod(d,2);
b(i)=x;
i=i+1;
d=d/2;
end
i=1;
for j=8:-1:1

arr(i)=b(j);
i=i+1;
end
for i=1:8
fprintf('%d',arr(i));
end
%/////////////////////////////////////////////////

%//////////////////GETTING THE OTHER MATRIX VALUES//////////////////
%printf("\nenter the matrix values");
%for i=1:15
inp(2)=a(13,14);
inp(3)=a(13,15);
inp(4)=a(13,16);
inp(5)=a(14,13);
inp(6)=a(14,14);
inp(7)=a(14,15);
inp(8)=a(14,16);
inp(9)=a(15,13);
inp(10)=a(15,14);
inp(11)=a(15,15);
inp(12)=a(15,16);
inp(13)=a(16,13);
inp(14)=a(16,14);
inp(15)=a(16,15);
inp(16)=a(16,16);

%/////////////////////////////////////////////////////////////////////
%////////////////SPLITTING THE MATRIX VALUES ACCORDING TO THEIR LEVELS/////////
l0(1)=inp(2);
l1(1)=inp(3);
l1(2)=inp(4);
l2(1)=inp(5);
l2(2)=inp(6);
l2(3)=inp(7);
l2(4)=inp(8);
l3(1)=inp(9);
l3(2)=inp(10);
l3(3)=inp(11);
l3(4)=inp(12);
l3(5)=inp(13);
l3(6)=inp(14);
l3(7)=inp(15);
l3(8)=inp(16);
%/////////////////////////////////////////////////////////////
%//////////////////// SWAPPING/////////////////////////////////
while round<4 

    if round==1 

        level=arr(1)*2+arr(2)*1;
        pos=arr(3)*32+arr(4)*16+arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==2

        level=arr(3)*2+arr(4)*1;
        pos=arr(5)*8+arr(6)*4+arr(7)*2+arr(8)*1;
        swap=pos;
    elseif round==3

        level=arr(5)*2+arr(6)*1;
        pos=arr(7)*2+arr(8)*1;
        swap=pos;
    end
%///////////////////LEVEL 3////////////////////////////////
    if level==3
        round=round+1;

        pos=mod(pos,8)+1;    
            if mod(pos,2)==0

                temp=l3(pos);
                l3(pos)=l3(pos+1);
                l3(pos+1)=temp;

            else

                temp=l3(pos);
                l3(pos)=l3(pos-1);
                l3(pos-1)=temp;
            end

            %round=round+1;

            %//////////////////////////////////////LEVEL 2////////////////////////////////////////
    elseif level==2
        round=round+1;
        pos=mod(pos,4)+1;
        swap_opt=mod(swap,2);
        if pos==1 && swap_opt==0

            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==2 && swap_opt==0

            temp=l2(2);
            l2(2)=l3(3);
            l3(3)=temp;

        elseif pos==2 && swap_opt==1

            temp=l2(2);
            l2(2)=l3(4);
            l3(4)=temp;

        elseif pos==3 && swap_opt==0

            temp=l2(3);
            l2(3)=l3(5);
            l3(5)=temp;

        elseif pos==3 && swap_opt==1

            temp=l2(3);
            l2(3)=l3(6);
            l3(6)=temp;

        elseif pos==4 && swap_opt==0

            temp=l2(4);
            l2(4)=l3(7);
            l3(7)=temp;

        elseif pos==4 && swap_opt==1

            temp=l2(4);
            l2(4)=l3(8);
            l3(8)=temp;
        end
        %round=round+1;

        %/////////////////////////////LEVEL 1/////////////////////////////////
     elseif level==1
        round=round+1;
        pos=mod(pos,2)+1;
        swap_opt=mod(swap,4);
        if pos==1 && swap_opt==0

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(1);
            l3(1)=temp;

        elseif pos==1 && swap_opt==1

            temp=l1(1);
            l1(1)=l2(1);
            l2(1)=temp;
            temp=l2(1);
            l2(1)=l3(2);
            l3(2)=temp;

        elseif pos==1 && swap_opt==2

            temp=l1(1);
            l1(1)=l2(2);
            l2(2)=temp;
            temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==2 && swap_opt==0

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==2 && swap_opt==1

temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==2 && swap_opt==2

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==2 && swap_opt==3

temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
round=round+1;

%///////////////////////////////////////LEVEL 0///////////////////////////
elseif level==0
round=round+1;
pos=mod(pos,1)+1;
swap_opt=mod(swap,8);
if pos==1 && swap_opt==0

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif pos==1 && swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif pos==1 && swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif pos==1 && swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(4);
l3(4)=temp;

elseif pos==1 && swap_opt==4

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif pos==1 && swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif pos==1 && swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif pos==1 && swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
end
end
%/////////////////////////////FINAL SWAPPING///////////////////////////
final=mod(inp(1),8)+1;
swap_opt=final;
if swap_opt==1

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(1);
l3(1)=temp;

elseif swap_opt==2

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(1);
l2(1)=temp;
temp=l2(1);
l2(1)=l3(2);
l3(2)=temp;

elseif swap_opt==3

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(2)=l3(3);
l3(3)=temp;

elseif swap_opt==4

temp=l0(1);
l0(1)=l1(1);
l1(1)=temp;
temp=l1(1);
l1(1)=l2(2);
l2(2)=temp;
temp=l2(2);
l2(3)=l3(4);
l3(4)=temp;

elseif swap_opt==5

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(5);
l3(5)=temp;

elseif swap_opt==6

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(3);
l2(3)=temp;
temp=l2(3);
l2(3)=l3(6);
l3(6)=temp;

elseif swap_opt==7

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(7);
l3(7)=temp;

elseif swap_opt==8

temp=l0(1);
l0(1)=l1(2);
l1(2)=temp;
temp=l1(2);
l1(2)=l2(4);
l2(4)=temp;
temp=l2(4);
l2(4)=l3(8);
l3(8)=temp;
end
%////////////////////////////////DISPLAYING THE FINAL SHUFFLED NUMBER SEQUENCE/////////////////
fprintf('\nTHE FINAL SHUFFLED TREE IS');
fprintf('\n%d',inp(1));
fprintf('\n%d',l0(1));
fprintf('\n%d %d',l1(1),l1(2));
fprintf('\n%d %d %d %d',l2(1),l2(2),l2(3),l2(4));
fprintf('\n%d %d %d %d %d %d %d %d',l3(1),l3(2),l3(3),l3(4),l3(5),l3(6),l3(7),l3(8));
fprintf('\nREPRESENSTING AS A SEQUENCE:\n');
a(13,13)=inp(1);
a(13,14)=l0(1);
a(13,15)=l1(1);
a(13,16)=l1(2);
a(14,13)=l2(1);
a(14,14)=l2(2);
a(14,15)=l2(3);
a(14,16)=l2(4);
a(15,13)=l3(1);
a(15,14)=l3(2);
a(15,15)=l3(3);
a(15,16)=l3(4);
a(16,13)=l3(5);
a(16,14)=l3(6);
a(16,15)=l3(7);
a(16,16)=l3(8);
for i=1:16
    for j=1:16
        fprintf('%d\t',a(i,j));
    end
        fprintf('\n');
end
figure;
imhist(a);
figure;imshow(a);
%//////////////////////////////////////////////////////////////////////////////////










toc;
figure;imhist(a);title='encrypted image';
figure;imshow(a);
imwrite(a, 'fng.jpg', 'jpg');

%save Processed Images\a.jpg;
%a=imresize(a,[256 256]);
%figure;imshow(a);%title('modified Image');
b=im2bw(a);
b=imresize(b,[256 256]);
figure;imshow(b);
%figure;imhist(b);

%figure;imshow(b);
thin_image=~bwmorph(b,'thin',Inf);
figure;imshow(thin_image);%title('Thinned Image');
%Minutiae extraction
s=size(thin_image);
N=3;%window size
n=(N-1)/2;
r=s(1)+2*n;
c=s(2)+2*n;
double temp(r,c);   
temp=zeros(r,c);bifurcation=zeros(r,c);ridge=zeros(r,c);
temp((n+1):(end-n),(n+1):(end-n))=thin_image(:,:);
outImg=zeros(r,c,3);%For Display
outImg(:,:,1) = temp .* 255;
outImg(:,:,2) = temp .* 255;
outImg(:,:,3) = temp .* 255;
for x=(n+1+10):(s(1)+n-10)
    for y=(n+1+10):(s(2)+n-10)
        e=1;
        for k=x-n:x+n
            f=1;
            for l=y-n:y+n
                mat(e,f)=temp(k,l);
                f=f+1;
            end
            e=e+1;
        end;
         if(mat(2,2)==0)
            ridge(x,y)=sum(sum(~mat));
            bifurcation(x,y)=sum(sum(~mat));
         end
    end;
end;

% RIDGE END FINDING
[ridge_x ridge_y]=find(ridge==2);
len=length(ridge_x);

%For Display
for i=1:len         
    outImg((ridge_x(i)-3):(ridge_x(i)+3),(ridge_y(i)-3),2:3)=0;
    outImg((ridge_x(i)-3):(ridge_x(i)+3),(ridge_y(i)+3),2:3)=0;
    outImg((ridge_x(i)-3),(ridge_y(i)-3):(ridge_y(i)+3),2:3)=0;
    outImg((ridge_x(i)+3),(ridge_y(i)-3):(ridge_y(i)+3),2:3)=0;
    
    outImg((ridge_x(i)-3):(ridge_x(i)+3),(ridge_y(i)-3),1)=255;
    outImg((ridge_x(i)-3):(ridge_x(i)+3),(ridge_y(i)+3),1)=255;
    outImg((ridge_x(i)-3),(ridge_y(i)-3):(ridge_y(i)+3),1)=255;
    outImg((ridge_x(i)+3),(ridge_y(i)-3):(ridge_y(i)+3),1)=255;
end

%BIFURCATION FINDING
[bifurcation_x bifurcation_y]=find(bifurcation==4);
len=length(bifurcation_x);
disp(len);
%For Display
for i=1:len
    outImg((bifurcation_x(i)-3):(bifurcation_x(i)+3),(bifurcation_y(i)-3),1:2)=0;
    outImg((bifurcation_x(i)-3):(bifurcation_x(i)+3),(bifurcation_y(i)+3),1:2)=0;
    outImg((bifurcation_x(i)-3),(bifurcation_y(i)-3):(bifurcation_y(i)+3),1:2)=0;
    outImg((bifurcation_x(i)+3),(bifurcation_y(i)-3):(bifurcation_y(i)+3),1:2)=0;
    
    outImg((bifurcation_x(i)-3):(bifurcation_x(i)+3),(bifurcation_y(i)-3),3)=255;
    outImg((bifurcation_x(i)-3):(bifurcation_x(i)+3),(bifurcation_y(i)+3),3)=255;
    outImg((bifurcation_x(i)-3),(bifurcation_y(i)-3):(bifurcation_y(i)+3),3)=255;
    outImg((bifurcation_x(i)+3),(bifurcation_y(i)-3):(bifurcation_y(i)+3),3)=255;
end

figure;imshow(outImg);%title('Minutiae');
disp('EXTRACTED BIFURCATION VALUES FROM AN FINGER PRINT IMAGE');

for i=1:len
        A(i)=bifurcation_x(i);
        B(i)=bifurcation_y(i);
        fprintf('x %d\t',A(i));
        fprintf('y %d\n',B(i));
end
fprintf('\n TAKING OUR 16X16 ROI\n');
for i=1:len
        A(i)=bifurcation_x(i);
        B(i)=bifurcation_y(i);
        if A(i)<17 && B(i)<17
            
        fprintf('x %d\t',A(i));
        fprintf('y %d\n',B(i));
            
        end
end
imwrite(a,'11.png','png')
match=0;
for i=1:len
    if B(i)==B(i)
        %fprintf('\nTEMPLATE MATCHED');
        match=match+1;
    else
        %fprintf('\nTEMPLATE NOT MATCHED');
    end
end
%if match==len
 %   fprintf('\nTEMPLATE MATCHED');
%else
 %   fprintf('\nTEMPLATE NOT MATCHED');
%end
%save h.dat;