%% Plot IA
%butto dentro un po' di X per vedere cosa esce
distanza = 0.5;
range = [0,10];
x_plot = linspace(range(1),range(2),(range(2)-range(1))/distanza);
y_plot = x_plot;

hold on
for ii = 1:size(x_plot,2)
    for jj = 1:size(y_plot,2)
        X = [x_plot(ii),y_plot(jj)];
        result = NeuralNetwork(X,w,b,NetFormat,tipo); 
        if  result(1) >= 0.5
            plot(x_plot(ii),y_plot(jj),'ro');
        else 
            plot(x_plot(ii),y_plot(jj),'bx');
        end
    end
end

ezplot(funzione_test,range);
%surface(Risultato,Risultato)

hold off
title('IA')
xlabel('X')
ylabel('Y')
clear x_plot y_plot Actual_Test ii jj distanza X result
