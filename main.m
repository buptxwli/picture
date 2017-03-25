global A;
global B;
global C;
global D;
global E;
global F;
global G;
global G1;
global G2;
global G3;
global G4;
global G5;
global G6;
global G7;
global G8;
global G9;
global X;
global ffid;
B=imread('C:\Users\Xwli\Desktop\picture\warehouse.bmp');
C=imread('C:\Users\Xwli\Desktop\picture\xcrossing.bmp');
D=imread('C:\Users\Xwli\Desktop\picture\ycrossing.bmp');
E=imread('C:\Users\Xwli\Desktop\picture\right.bmp');
F=imread('C:\Users\Xwli\Desktop\picture\left.bmp');
G=imread('C:\Users\Xwli\Desktop\picture\car.bmp');
G1=imread('C:\Users\Xwli\Desktop\picture\car1.bmp');
G2=imread('C:\Users\Xwli\Desktop\picture\car2.bmp');
G3=imread('C:\Users\Xwli\Desktop\picture\car3.bmp');
G4=imread('C:\Users\Xwli\Desktop\picture\car4.bmp');
G5=imread('C:\Users\Xwli\Desktop\picture\car5.bmp');
G6=imread('C:\Users\Xwli\Desktop\picture\car6.bmp');
G7=imread('C:\Users\Xwli\Desktop\picture\car7.bmp');
G8=imread('C:\Users\Xwli\Desktop\picture\car8.bmp');
G9=imread('C:\Users\Xwli\Desktop\picture\car9.bmp');
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
    name = ['C:\Users\Xwli\Desktop\picture\result', num2str(i), '.bmp'];
    imwrite(uint8(X),name);
end
    

