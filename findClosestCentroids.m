function idx=findClosestCentroids(X,centroids)

    K = size(centroids, 1);

    idx = zeros(size(X,1), 1);

    for i=1:size(X,1),
        for j=1:size(centroids,1);
            sum1=sum((X(i,:)-centroids(j,:)).^2);
            A(i,j)=sum1;
        end
        [minVal,minIndex]=min(A(i,:));
        idx(i,:)=minIndex;
    end

end