function[cnt] = FindAllImage(imgDataPath, writeDataPath, rulerPath)
ruler = imread(rulerPath);
imgDataDir  = dir(imgDataPath);             % 遍历所有文件
cnt = 0;
for i = 1:length(imgDataDir)
    if(isequal(imgDataDir(i).name,'.')||... % 去除系统自带的两个隐文件夹
       isequal(imgDataDir(i).name,'..')||...
       ~imgDataDir(i).isdir)                % 去除遍历中不是文件夹的
           continue;
    end
    imgDir = dir([imgDataPath imgDataDir(i).name '/*.jpg']); 
    for j =1:length(imgDir)                 % 遍历所有图片
        path = [imgDataPath imgDataDir(i).name '/' imgDir(j).name];
        origin_image = imread([imgDataPath imgDataDir(i).name '/' imgDir(j).name]);
        if exist([writeDataPath imgDataDir(i).name],'dir')==0
            mkdir([writeDataPath imgDataDir(i).name]);
        end
        write_image = AddRuler(origin_image,ruler);
        write_path = [writeDataPath imgDataDir(i).name '/' imgDir(j).name];
        imwrite(write_image, write_path,'jpg','Quality',100);
        cnt=cnt+1;
        fprintf('已经处理了%d个文件\n',cnt);
    end
end
end