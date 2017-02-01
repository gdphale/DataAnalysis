load cam1_1.mat

small_vid = imresize(vidFrames1_1, 0.4);
dims = size(small_vid);
normalized = normalizeColorVid(small_vid);

crop_down = floor(size(normalized, 1)/3);
crop_left = floor(size(normalized, 2)/3);
crop_mat = [crop_down crop_left 0 0];

c_nm_vid = normalized( crop_down:end , crop_left:(size(normalized, 2)-crop_left), :);

cropped_dim = size(c_nm_vid);

thresholded_cropped_vid = threshold(c_nm_vid);

cs = zeros(3, size(small_vid, 4));

for i = 1:length(cs)
      
      M  = frame2Coord(thresholded_cropped_vid(:,:,i));
      [idx,c] = kmeans(M,2);
      cs(:,i) = c(2,:)';
      small_vid(:,:,:,i) = coord2AddFrame(c, cropped_dim, small_vid(:,:,:,i), crop_mat);
      
end

play_m(small_vid);