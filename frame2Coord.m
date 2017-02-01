function M = frame2Coord(A)

SCALING_FACTOR = 100;
% multiply by a hundred so that when the distance is computed, the
% contents of the pixel is weighted more heavily that the index
x_dim = size(A,1);
y_dim = size(A,2);
values = reshape(A, [y_dim*x_dim 1]).*SCALING_FACTOR;
xs = repmat(1:x_dim, [1 y_dim ] )'./x_dim;
ys = repmat(1:y_dim, [1 x_dim ] )'./y_dim;
M = [xs ys values];

end