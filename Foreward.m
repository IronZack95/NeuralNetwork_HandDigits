%% Provo la rete

%   funzione Costo Cross Entropy Loss
%   Eseguo un forward e valuto la funzione costo
yp = zeros(size(Actual_test,1),NetFormat(end));
j = zeros(size(Actual_test,1),NetFormat(end));
J = zeros(size(Actual_test,1),1);
yp_max = zeros(size(Actual_test,1),1);

% Eseguo tutto il vettore di MiniBatch
for ii = 1:size(MiniBatch,1)
    X = MiniBatch{ii,1};        %x1 e x2 e xn....
    [yp(ii,:),zp(ii,:)] = NeuralNetwork(X,w,b,NetFormat,tipo);
    [j(ii,:),J(ii)] = FunzioneCosto(yp(ii,:),Actual_test(ii,:),NetFormat,tipoJ,0);
    % calcolo il massimo valore riconosciuto per ogni vettore d'ingresso
    [massimo,temp_max] = max(yp(ii,:));
    yp_max(ii) = temp_max - 1;
end



clear X yp_s z1p_s ii massimo temp_max




