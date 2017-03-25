function [ ] = video( time )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
WriterObj2=VideoWriter('test3.avi');
WriterObj2.FrameRate = 30;
open(WriterObj2);
for i=1:time+1
    for j=1:40
        name = ['C:\Users\Xwli\Desktop\picture\result', num2str(i), '.bmp'];
        fame=imread(name);
        writeVideo(WriterObj2,fame);
    end
end
close(WriterObj2);
end

