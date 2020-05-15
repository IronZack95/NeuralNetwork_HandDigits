function  PlotMiniBatch(MiniBatch)
    
    for ii = 1 : size(MiniBatch,1)
        subplot(3,ceil(size(MiniBatch,1)/3),ii)
        PlotFigure(MiniBatch{ii,1},MiniBatch{ii,2})
        
    end
    
end
