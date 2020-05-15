%% Plot IA
%butto dentro un po' di X per vedere cosa esce
distanza = 0.5;
range = [0,10];
x_plot = linspace(range(1),range(2),(range(2)-range(1))/distanza);
y_plot = x_plot;

% hold on
for ii = 1:size(x_plot,2)
    for jj = 1:size(y_plot,2)
        X = [x_plot(ii),y_plot(jj)];
        result = NeuralNetwork(X,w,b,NetFormat,tipo); 
        Risultato(ii,jj) = result(1);
    end
end

c = hot(20);
surf(x_plot,y_plot,Risultato);
colormap(c);
shading interp;

%surface(Risultato,Risultato)

% hold off
title('IA')
xlabel('X')
ylabel('Y')
clear x_plot y_plot Actual_Test ii jj distanza X result
