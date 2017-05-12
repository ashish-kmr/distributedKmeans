centers=5;
points_cluster=500;
D=100;
cluster_centers=randn(centers,D);
dataset=zeros(centers*points_cluster,D);

for i=1:centers
    for j=1:points_cluster
        index=(i-1)*points_cluster+j;
        dataset(index,:)=randn;%normrnd(cluster_centers(i,:),0.1);
    end
end
