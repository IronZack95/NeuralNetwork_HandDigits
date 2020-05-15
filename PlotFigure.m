function PlotFigure(IMM,Label)

    temp = zeros(28,28);
    for kk = 1:28
        temp(:,kk) = IMM(((28*(kk-1))+1):1:(28*kk))'; 
    end  

%     figure('position',[500 500 200 200]);
    imagesc(temp);
    colormap('gray');
    colorbar;
    axis image off
    title(num2str(Label));
    
end