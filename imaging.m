function [ X ] = imaging( m,n)
%m,n，行数、列数；A 输入矩阵，B,仓库，C，X交叉口，D，Y交叉口，E，>,F,<,G,车
%   Detailed explanation goes here
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
row=m*45;
col=n*45;
for i=1:row
    for j=1:col
        X(i,j)=0;
    end
end
for i=1:m
    for j=1:n
        if(A(i,j)=='#')
            for p=1:45
                for q=1:45
                    xrow=(i-1)*45+p;
                    xcol=(j-1)*45+q;
                    X(xrow,xcol)=B(p,q);
                end
            end
        end
        if(A(i,j)=='X')
            for p=1:45
                for q=1:45
                    xrow=(i-1)*45+p;
                    xcol=(j-1)*45+q;
                    X(xrow,xcol)=C(p,q);
                end
            end
        end
        if(A(i,j)=='Y')
            for p=1:45
                for q=1:45
                    xrow=(i-1)*45+p;
                    xcol=(j-1)*45+q;
                    X(xrow,xcol)=D(p,q);
                end
            end
        end
        if(A(i,j)=='>')
            for p=1:45
                for q=1:45
                    xrow=(i-1)*45+p;
                    xcol=(j-1)*45+q;
                    X(xrow,xcol)=E(p,q);
                end
            end
        end
        if(A(i,j)=='<')
            for p=1:45
                for q=1:45
                    xrow=(i-1)*45+p;
                    xcol=(j-1)*45+q;
                    X(xrow,xcol)=F(p,q);
                end
            end
        end
        if(A(i,j)>=48 && A(i,j)<=57)
            switch A(i,j)
                case 48
                    for p=1:45
                        for q=1:45
                            xrow=(i-1)*45+p;
                            xcol=(j-1)*45+q;
                            X(xrow,xcol)=G1(p,q);
                        end
                    end
                case 49
                   for p=1:45
                        for q=1:45
                            xrow=(i-1)*45+p;
                            xcol=(j-1)*45+q;
                            X(xrow,xcol)=G2(p,q);
                        end
                   end
                case 50
                    for p=1:45
                        for q=1:45
                            xrow=(i-1)*45+p;
                            xcol=(j-1)*45+q;
                            X(xrow,xcol)=G3(p,q);
                        end
                    end
                case 51
                    for p=1:45
                        for q=1:45
                            xrow=(i-1)*45+p;
                            xcol=(j-1)*45+q;
                            X(xrow,xcol)=G4(p,q);
                        end
                    end
                case 52
                    for p=1:45
                        for q=1:45
                            xrow=(i-1)*45+p;
                            xcol=(j-1)*45+q;
                            X(xrow,xcol)=G5(p,q);
                        end
                    end
                case 53
                    for p=1:45
                        for q=1:45
                            xrow=(i-1)*45+p;
                            xcol=(j-1)*45+q;
                            X(xrow,xcol)=G6(p,q);
                        end
                    end
                case 54
                    for p=1:45
                        for q=1:45
                            xrow=(i-1)*45+p;
                            xcol=(j-1)*45+q;
                            X(xrow,xcol)=G7(p,q);
                        end
                    end
                case 55
                    for p=1:45
                        for q=1:45
                            xrow=(i-1)*45+p;
                            xcol=(j-1)*45+q;
                            X(xrow,xcol)=G8(p,q);
                        end
                    end
                case 56
                    for p=1:45
                        for q=1:45
                            xrow=(i-1)*45+p;
                            xcol=(j-1)*45+q;
                            X(xrow,xcol)=G9(p,q);
                        end
                    end
                otherwise
                    for p=1:45
                        for q=1:45
                            xrow=(i-1)*45+p;
                            xcol=(j-1)*45+q;
                            X(xrow,xcol)=G(p,q);
                        end
                    end
            end
        end
    end
end
end

