function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

% for文をできるだけ使わずにやってみる。

% idxを01の行列に変形
idx_01 = zeros(m,K);
for i = 1:m
  idx_01(i,idx(i)) = 1;
end

% 各重心に割り振られた点の数値の合計値を求める。k x n
goukei = idx_01' * X;

% 各重心に割り振られた点の個数を求める。　1 x k
kosuu = sum(idx_01);

% 合計値を個数で割り、平均を求める。 k x n
centroids = goukei ./ kosuu';


% これで、各重心に割り振られたxを元に、重心の位置を変更する仕組みができた。

% =============================================================


end
