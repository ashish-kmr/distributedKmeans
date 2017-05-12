function [new_centers,weight_centers,final_loss] = kmeans_iter(data, centers, point_weight)
    k=size(centers,1);
    D=size(centers,2);
    new_centers=zeros(k,D);
    weight_centers=zeros(k,1);
    final_loss=0;
    for i=1:size(data,1)
        [cluster_id,loss]=find_closest(centers,data(i,:));
        final_loss=final_loss+loss;
        new_centers(cluster_id,:)=new_centers(cluster_id,:)+data(i,:);
        weight_centers(cluster_id,1)=weight_centers(cluster_id,1)+point_weight(i,1);
    end
    weight_centers(find(weight_centers(:,1)==0),1)=1;
    new_centers=new_centers./repmat(weight_centers,[1 D]);
end