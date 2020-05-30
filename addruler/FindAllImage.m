function[cnt] = FindAllImage(imgDataPath, writeDataPath, rulerPath)
ruler = imread(rulerPath);
imgDataDir  = dir(imgDataPath);             % ���������ļ�
cnt = 0;
for i = 1:length(imgDataDir)
    if(isequal(imgDataDir(i).name,'.')||... % ȥ��ϵͳ�Դ����������ļ���
       isequal(imgDataDir(i).name,'..')||...
       ~imgDataDir(i).isdir)                % ȥ�������в����ļ��е�
           continue;
    end
    imgDir = dir([imgDataPath imgDataDir(i).name '/*.jpg']); 
    for j =1:length(imgDir)                 % ��������ͼƬ
        path = [imgDataPath imgDataDir(i).name '/' imgDir(j).name];
        origin_image = imread([imgDataPath imgDataDir(i).name '/' imgDir(j).name]);
        if exist([writeDataPath imgDataDir(i).name],'dir')==0
            mkdir([writeDataPath imgDataDir(i).name]);
        end
        write_image = AddRuler(origin_image,ruler);
        write_path = [writeDataPath imgDataDir(i).name '/' imgDir(j).name];
        imwrite(write_image, write_path,'jpg','Quality',100);
        cnt=cnt+1;
        fprintf('�Ѿ�������%d���ļ�\n',cnt);
    end
end
end