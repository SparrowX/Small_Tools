%MATLAB ��һ���ļ�����������ȡͼƬ����ӱ�ߣ������洦��õ�ͼƬ�ļ�������һ���ļ���
%����ƽ̨��Windows 10, MATLAB R2018a
%��д���ڣ�20200530
%xiaoxinwei
%ע�⣺��֧�ֵ���Ŀ¼����֧�ֶ�Ŀ¼Ƕ��
clear;
clc;
close all;

%%�趨ԭʼͼƬĿ¼������ͼƬĿ¼������ļ�·��
imgDataPath = './result/';
writeDataPath = './processed/';
rulerPath = ('ruler.jpg');
cnt = FindAllImage(imgDataPath, writeDataPath, rulerPath);
fprintf('************************\n',cnt);
fprintf('�ɹ�������%d���ļ���������\n',cnt);
fprintf('************************\n',cnt);