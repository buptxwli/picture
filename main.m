global A;
global B;
global C;
global D;
global E;
global F;
global G;
global X;
global ffid;
B=imread('C:\Users\Xwli\Desktop\warehouse.bmp');
C=imread('C:\Users\Xwli\Desktop\xcrossing.bmp');
D=imread('C:\Users\Xwli\Desktop\ycrossing.bmp');
E=imread('C:\Users\Xwli\Desktop\right.bmp');
F=imread('C:\Users\Xwli\Desktop\left.bmp');
G=imread('C:\Users\Xwli\Desktop\car.bmp');
ffid = fopen('E:\code\proj\output.txt','r');
tline = fgetl(ffid);
tmp=tline;
num=str2num(tmp);
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
    name = ['C:\Users\Xwli\Desktop\result', num2str(time), '.bmp'];
    imwrite(uint8(X),name);
end
    

