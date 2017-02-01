function m = normalizeColorVid(A)
% this normalizes the matrix A, just summing and dividing by the max value,
% using the 3rd dimension over which it sums.

max_color = 255;

m = reshape(sum(A, 3)./(max_color*3), [size(A,1), size(A,2) , size(A,4)]);

end