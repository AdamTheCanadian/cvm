%% Basic image input/output
% Using matlab to read image, display image, and save image
% Using KITTI data sets for my image source
close all
clear all
clc
%%
% Path to kitti data set
im_path = '/Volumes/swap/projects/2011_09_29/2011_09_29_drive_0071_extract/';

figure;
hold on
title('Camera 0')
gray_img = imread([im_path, '/image_00/data/0000000000.png']);
imshow(gray_img);

rgb_img = imread([im_path, '/image_02/data/0000000000.png']);
figure;
subplot(2, 1, 1);
hold on
title('Camera 2')
imshow(rgb_img);

subplot(2, 1, 2);
hold on
title('Converted to grayscale');
imshow(rgb2gray(rgb_img));

print(gcf, 'camera2.png', '-dpng');