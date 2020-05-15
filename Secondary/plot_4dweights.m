%% Plot 4D function

RangeW_plot = [-10,10];
density = 0.5;

[X,Y,Z] = meshgrid(RangeW_plot(1):density:RangeW_plot(2),RangeW_plot(1):density:RangeW_plot(2),RangeW_plot(1):density:RangeW_plot(2));

% Riga del test da valutare
riga_da_valutare = 1;
x1 = test(riga_da_valutare,1);
x2 = test(riga_da_valutare,2);
Actual = test(riga_da_valutare,3);

%posizione elemento in cui sostutuire X e Y e Z
rigaX = 1;
colonnaX = 1;
rigaY = 2;
colonnaY = 1;
rigaZ = 3;
colonnaZ = 1;

% voglio variare solo w2
W1 = w1;
W2 = w2;

%variabili di servizio
yp_plot = zeros(size(X,2),size(Y,2),size(Z,2));
j_plot = zeros(size(X,2),size(Y,2),size(Z,2));


for kk = 1:size(Z,3)
    for jj = 1:size(Y,2)
        for ii = 1:size(X,2)
            W2(rigaX,colonnaX) = X(ii,jj,kk);
            W2(rigaY,colonnaY) = Y(ii,jj,kk);
            W2(rigaZ,colonnaZ) = Z(ii,jj,kk);
            [yp_s,z1p_s] = NeuralNetwork(x1,x2,W1,W2,b1,b2,livelli(1),livelli(2:end-1),livelli(end),tipo);
            yp_plot(ii,jj,kk) = yp_s;
            %z1p(ii,:) = z1p_s;
            % funzione costo elemento per elemento
            j_plot(ii,jj,kk) = FunzioneCosto(yp_plot(ii,jj,kk),Actual,tipoJ,0);
        end
    end
end


xslice = [RangeW_plot(1):8*density:RangeW_plot(2)];   
yslice = [RangeW_plot(1):8*density:RangeW_plot(2)];
zslice = [RangeW_plot(1):8*density:RangeW_plot(2)];

grid on
slice(X,Y,Z,j_plot,xslice,yslice,zslice)
title('three variable')
view(3)
xlabel('W1')
ylabel('W2')
zlabel('W3')

clear xslice yslice zslice ii jj kk j_plot x1 x2 yp_s yp_plot ...
    z1p_s Actual riga_da_valutare density RangeW_plot X Y Z W1 W2 rigaX ...
    colonnaX rigaZ colonnaZ rigaY colonnaY

