obj = mmreader('matlab_test.mov')
vidFrames = read(obj);
numFrames = get(obj,'numberOfFrames');
for k = 1 : numFrames
    mov(k).cdata = vidFrames(:,:,:,k);
    mov(k).colormap = [];
end
for j=1:numFrames
    X=frame2im(mov(j));
    imshow(X); drawnow
end
