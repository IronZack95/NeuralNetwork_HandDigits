function  PlotWB_2(W,b)
ii = 1;
        x = linspace(1,size(W{ii},2),size(W{ii},2));
        y = linspace(1,size(W{ii},1),size(W{ii},1));
        [X,Y] = meshgrid(x,y);
        Z = W{ii};
        C = gradient(Z);
        surf(X,Y,Z)
        
        title(['Weight: W',int2str(ii)])
        xlabel('Out')
        ylabel('In')
        
end


