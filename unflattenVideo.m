function m = unflattenVideo(A, dims)
if size(A,1) < size(A,2)
    A = A';
end
m = reshape(A, [dims(1), dims(2), size(A,2)]);

end