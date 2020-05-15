function  PlotWB(W,b)
    
    for ii = 1 : size(W,2)
        subplot(size(W,2),2,(ii-1)*2+1)
        x = linspace(1,size(W{ii},2),size(W{ii},2));
        y = linspace(1,size(W{ii},1),size(W{ii},1));
        [X,Y] = meshgrid(x,y);
        Z = W{ii};
        C = gradient(Z);
        surf(X,Y,Z)
 
        
        title(['Weight: W',int2str(ii)])
        xlabel('Out')
        ylabel('In')
        
        subplot(size(W,2),2,(ii-1)*2+2)
        bar(b{ii})
        title(['Bias: B',int2str(ii)])
        xlabel(['Node'])
    end
    
end



