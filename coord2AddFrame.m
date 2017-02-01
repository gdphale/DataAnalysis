function V = coord2AddFrame(c, dim, VIDFRAME, cropped)
% cropped is a matrix of the form [top, left, right, bottom] telling where
% cropping was performed on the image
% takes in two paramters. The Centroid matrix returned from kmeans, and the
% dimensions of the image that 

x_dim = dim(1,1);
y_dim = dim(1,2);


if c(1,3) > 1
      x = cropped(1,1) + floor(x_dim*(c(1,1)));
      y = cropped(1,2) + floor(y_dim*(c(1,2)));
elseif c(2,3) > 1
      x = cropped(1,1) + floor(x_dim*(c(2,1)));
      y = cropped(1,2) + floor(y_dim*(c(2,2)));
end
V = VIDFRAME;
V(x, y, 2) = 255;
V(x+1, y+1, 2) = 255;
V(x+1, y, 2) = 255;
V(x, y+1, 2) = 255;
V(x-1, y-1, 2) = 255;
V(x-1, y, 2) = 255;
V(x, y-1, 2) = 255;

V(x, y, 1) = 0;
V(x+1, y+1, 1) = 0;
V(x+1, y, 1) = 0;
V(x, y+1, 1) = 0;
V(x-1, y-1, 1) = 0;
V(x-1, y, 1) = 0;
V(x, y-1, 1) = 0;

V(x, y, 3) = 0;
V(x+1, y+1, 3) = 0;
V(x+1, y, 3) = 0;
V(x, y+1, 3) = 0;
V(x-1, y-1, 3) = 0;
V(x-1, y, 3) = 0;
V(x, y-1, 3) = 0;

end