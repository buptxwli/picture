global A;
global B;
global C;
global D;
global E;
global F;
global G;
global X;
global ffid;
% . reprensents 'C:/Users/Xwli/Desktop'
B=imread('./warehouse.bmp');
C=imread('./xcrossing.bmp');
D=imread('./ycrossing.bmp');
E=imread('./right.bmp');
F=imread('./left.bmp');
G=imread('./car.bmp');
ffid = fopen('E:\code\proj\output.txt','r');
tline = fgetl(ffid);
tmp=tline;
num=str2double(tmp);
time=num(1,1);
row=num(1,2);
col=num(1,3);
for i=1:time+1
    for p=1:row
        tline=fgetl(ffid);
        for q=1:col
            A(p,q)=tline(1,q);
        end
    end
    tline=fgetl(ffid);
    X=imaging(row,col);
    name = ['.\result', num2str(time), '.bmp'];
    imwrite(uint8(X),name);
end
    

