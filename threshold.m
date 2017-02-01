function m = threshold(A)

thresh = 0.98;

s = size(A);
A(A < thresh) = 0;
A(A >= thresh) = 0.999;
m = reshape(A, s);

end