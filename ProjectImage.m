clc;
fprintf("Running Kmeans Clustering to compress an image\n");

A=double(imread('bird_small.png'));
A=A/255;
imgSize=size(A)

X=reshape(A,imgSize(1)*imgSize(2),3);
size(X)

K=16;
max_iters=10;
initial_centroids=kmeanscentroid(X,K);
initial_centroids_size=size(initial_centroids);

[centroids,idx]=runkmeans(X,initial_centroids,max_iters);

fprintf("\nApplying K-Means Clustering Algorithm to compress an Image\n\n");

idx=findClosestCentroids(X,centroids);
X_recovered=centroids(idx,:);

X_recovered=reshape(X_recovered,imgSize(1),imgSize(2),3);

subplot(1,2,1);
imagesc(A);
title('Original');

subplot(1,2,2);
imagesc(X_recovered)
title(sprintf('Compressed, with %d colors',K));

fprintf('\nProgram COMPLETE.Press enter to exit\n');
pause;