function centroids =computeCentroids(X,idx,K)

    for j=1:K,
        sum1=0;
        count=0;
        for i=1:size(idx,1),
            if(idx(i)==j)
                sum1+=X(i,:);
                count+=1;
            end
        end
        centroids(j,:)=sum1/count;
    end
end