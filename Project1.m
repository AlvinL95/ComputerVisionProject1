clc
clear
close all

load 'points3D.mat';                                                        %Load data points (table)

points = table2array(points3D);                                             %Convert table to array
dataSize = size(points,1);                                                  %Number of data points
minPoints = 100;                                                            %Minimum number of data points 
bestInliear = 0;                                                            %Best fitting line with largest number of inliers                                             
maxIter = 5000;                                                             %Number of iterations
% for i=1:maxIter
%     idx = randperm(dataSize,minPoints);                                     %Generate a random index
%     sample = points(idx,:);                                                 %Subset of random points
%     
%     
%     
%      kLine = sample(:,2)-sample(:,1);% two points relative distance
%      kLineNorm = kLine/norm(kLine);
%      normVector = [-kLineNorm(2),kLineNorm(1)];%Ax+By+C=0 A=-kLineNorm(2),B=kLineNorm(1)
%      distance = normVector*(data - repmat(sample(:,1),1,number));
% end
scatter3(points(:,2),points(:,3),points(:,4))