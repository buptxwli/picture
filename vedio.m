function [ ] = video(  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
WriterObj2=VideoWriter('test2.avi');
WriterObj2.FrameRate = 30;
open(WriterObj2);
for i=1:16
    for j=1:20
        name = ['C:\Users\Xwli\Desktop\result', num2str(i), '.bmp'];
        fame=imread(name);
        writeVideo(WriterObj2,fame);
    end
end
close(WriterObj2);
end