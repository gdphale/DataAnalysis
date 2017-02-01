function m = flattenVideo(A)

if size(size(A), 2) == 2
    m = reshape(A,  (size(A,1)*size(A,2)) );
elseif size(size(A), 2) == 3
    m = reshape(A, [ (size(A,1)*size(A,2)), size(A,3) ]);
elseif size(size(A), 2) == 4
    m = reshape(A, [ (size(A,1)*size(A,2)), size(A,3) , size(A,4) ]);
end

end