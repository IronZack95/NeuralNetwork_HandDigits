% Loading training images and labels
imageFile='train-images.idx3-ubyte';
labelFile='train-labels.idx1-ubyte';
images = loadMNISTImages(imageFile);
labels = loadMNISTLabels(labelFile);
% disp(size(images))
% disp(size(labels))



for ii = Dataset_range(1):Dataset_range(2)
    IMM{ii,1} = (images(:,ii))';   % prima riga immagine su un vettore
    IMM{ii,2} = labels(ii);     % seconda riga label
end

% Plotta tre figure
% for i=1:3
%     for kk = 1:28
%         IMM(:,kk) = images(((28*(kk-1))+1):1:(28*kk),i)'; 
%     end
%     figure('position',[500 500 200 200]);
%     Lbl=labels(i);
%     imagesc(IMM);
%     colormap('gray');
%     colorbar;
%     axis image off
%     title(num2str(Lbl));
% end

clear Dataset_range imageFile labelFile images labels