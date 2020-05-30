%MATLAB 从一个文件夹中批量读取图片，添加标尺，并保存处理好的图片文件到另外一个文件夹
%测试平台：Windows 10, MATLAB R2018a
%编写日期：20200530
%xiaoxinwei
%注意：仅支持单级目录，不支持多目录嵌套
clear;
clc;
close all;

%%设定原始图片目录，保存图片目录，标尺文件路径
imgDataPath = './result/';
writeDataPath = './processed/';
rulerPath = ('ruler.jpg');
cnt = FindAllImage(imgDataPath, writeDataPath, rulerPath);
fprintf('************************\n',cnt);
fprintf('成功处理了%d个文件！结束！\n',cnt);
fprintf('************************\n',cnt);