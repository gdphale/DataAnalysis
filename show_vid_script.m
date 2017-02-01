

nmvid = normalizeColorVid(vidFrames1_1);
nmvid = nmvid(floor(size(nmvid, 1)/3):end , floor(size(nmvid, 2)/3):(size(nmvid, 2)-floor(size(nmvid, 2)/3)), :);
snmvid = imresize(nmvid, 0.4);
tsnmvid = threshold(snmvid);

play_m(tsnmvid);

%ica_able = flattenVideo(tsnmvid);

%figure();
%t = linspace(1,100,size(ica_able, 2));
%subplot(4,1,2), hold on, plot(t,ICt(:,1)/max(ICt(:,1)),t,ICt(:,2)/max(ICt(:,2)),'Linewidth',[2])
%subplot(4,1,3), plot(x,IC(1,:)/max(IC(1,:)),'Linewidth',[2])
%subplot(4,1,4), plot(x,IC(2,:)/max(abs(IC(2,:))),'Linewidth',[2])