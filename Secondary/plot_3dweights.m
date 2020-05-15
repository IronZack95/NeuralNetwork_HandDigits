%% Plot 3D function

RangeW_plot = [-10,10];
density = 0.5;

[X,Y] = meshgrid(RangeW_plot(1):density:RangeW_plot(2),RangeW_plot(1):density:RangeW_plot(2));

% Riga del test da valutare
riga_da_valutare = 1;
x1 = test(riga_da_valutare,1);
x2 = test(riga_da_valutare,2);
Actual = test(riga_da_valutare,3);

%posizione elemento in cui sostutuire X e Y
rigaX = 1;
colonnaX = 1;
rigaY = 2;
colonnaY = 1;

% voglio variare solo w2
W1 = w1;
W2 = w2;

%variabili di servizio
yp_plot = zeros(size(X,2),size(Y,2));
j_plot = zeros(size(X,2),size(Y,2));

for jj = 1:size(Y,2)
    for ii = 1:size(X,2)
        W2(rigaX,colonnaX) = X(ii,jj);
        W2(rigaY,colonnaY) = Y(ii,jj);
        [yp_s,z1p_s] = NeuralNetwork(x1,x2,W1,W2,b1,b2,livelli(1),livelli(2:end-1),livelli(end),tipo);
        yp_plot(ii,jj) = yp_s;
        %z1p(ii,:) = z1p_s;
        % funzione costo elemento per elemento
        j_plot(ii,jj) = FunzioneCosto(yp_plot(ii,jj),Actual,tipoJ,0);
    end
end

surf(X,Y,j_plot)
title('two variable')
xlabel('W1')
ylabel('W2')
zlabel('J(W)')

clear ii jj j_plot x1 x2 yp_s yp_plot z1p_s Actual riga_da_valutare density RangeW_plot X Y W1 W2 rigaX colonnaX