function [ OriginImage ] = AddRuler(OriginImage, ruler)
%OriginImage = imread(filename);

%pic = double(pic);
%ruler = double(ruler);
imsize = size(OriginImage);
imsize_r = size(ruler);
for j = imsize(1) :-1: (imsize(1) - imsize_r(1)+1)
    for k = imsize(2) :-1: (imsize(2) - imsize_r(2)+1)
        ruler_x = j - (imsize(1) - imsize_r(1));
        ruler_y = k - (imsize(2) - imsize_r(2));
        OriginImage(j, k, :) = ruler(ruler_x, ruler_y, :);
    end
end
%pic = uint8(pic);
%image(pic);
%imshow(OriginImage);
%imwrite(OriginImage,'newImage.jpg','jpg','Quality',100);
