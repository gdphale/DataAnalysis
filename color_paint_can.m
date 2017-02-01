% show the center of the paint can


small_frame = imresize(vidFrames1_1(:,:,:,1), 0.4);
dim = size(small_vid(:,:,1,1));

nm_vid = normalizeColorVid(small_frame);

crop_down = floor(size(nm_vid, 1)/3);
crop_left = floor(size(nm_vid, 2)/3);
crop_mat = [crop_down crop_left 0 0];

c_nm_vid = nm_vid( crop_down:end , crop_left:(size(nm_vid, 2)-crop_left), :);
figure();
imshow(c_nm_vid);
title('cropped normalized vid');
figure();

cropped_dim = size(c_nm_vid);

frame = threshold(c_nm_vid);
imshow(frame);
title('thresholded cropped normalized vid');
figure();

M  = frame2Coord(frame);
[idx,c] = kmeans(M,2);
vid = coord2AddFrame(c, cropped_dim, colored_frame, crop_mat);
imshow(vid);
%{
x = crop_mat(1,1) + floor(cropped_dim(1)*(c(2,1)));
y = crop_mat(1,2) + floor(cropped_dim(2)*(c(2,2)));
small_frame(x, y, 2) = 255;
small_frame(x+1, y+1, 2) = 255;
small_frame(x+1, y, 2) = 255;
small_frame(x, y+1, 2) = 255;
small_frame(x-1, y-1, 2) = 255;
small_frame(x-1, y, 2) = 255;
small_frame(x, y-1, 2) = 255;

small_frame(x, y, 1) = 0;
small_frame(x+1, y+1, 1) = 0;
small_frame(x+1, y, 1) = 0;
small_frame(x, y+1, 1) = 0;
small_frame(x-1, y-1, 1) = 0;
small_frame(x-1, y, 1) = 0;
small_frame(x, y-1, 1) = 0;

small_frame(x, y, 3) = 0;
small_frame(x+1, y+1, 3) = 0;
small_frame(x+1, y, 3) = 0;
small_frame(x, y+1, 3) = 0;
small_frame(x-1, y-1, 3) = 0;
small_frame(x-1, y, 3) = 0;
small_frame(x, y-1, 3) = 0;
imshow(small_frame);
figure();
imshow(imresize(vidFrames1_1(:,:,:,1), 0.4));
%}

%play_m(tsnmvid);

%ica_able = flattenVideo(tsnmvid);

%figure();
%t = linspace(1,100,size(ica_able, 2));
%subplot(4,1,2), hold on, plot(t,ICt(:,1)/max(ICt(:,1)),t,ICt(:,2)/max(ICt(:,2)),'Linewidth',[2])
%subplot(4,1,3), plot(x,IC(1,:)/max(IC(1,:)),'Linewidth',[2])
%subplot(4,1,4), plot(x,IC(2,:)/max(abs(IC(2,:))),'Linewidth',[2])