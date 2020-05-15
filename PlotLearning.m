function PlotLearning(Epoch_tot,MiniBatch_rate)
y = MiniBatch_rate;
x = linspace(0,Epoch_tot,Epoch_tot);
p = polyfit(x,y,3);
y1 = polyval(p,x);
plot(x,y1)
title(['Rate di Apprendimento per Mini-Batch ad Epoch ',num2str(Epoch_tot)]);
xlabel('Epoch')
ylabel('Predicted/Actual Rate')
        
end