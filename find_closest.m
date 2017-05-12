function [cluster_id,loss]=find_closest(centers,data_point)
    k=size(centers,1);
    diff=centers-repmat(data_point,[k 1]);
    dist=sum(diff.*diff,2);
    [loss,cluster_id]=min(dist);
end