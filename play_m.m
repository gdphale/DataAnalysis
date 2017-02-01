function g = play_m(A)
figure();

if size(size(A),2) == 3
    for i = 1:size(A,3)
        imshow(A(:,:,i));
        pause(0.005)
    end
end

if size(size(A),2) == 4
    for i = 1:size(A,4)
        imshow(A(:,:,:,i));
        pause(0.005)
    end
end

end