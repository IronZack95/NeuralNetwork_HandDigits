%% Back Propagation
   
    % Inizializzo i Delta e i Z a zero
    for kk = 1 : size(zp(1,:),2)
        Delta_tot{kk} = zeros(size(zp{1,kk}));
        Z{kk} = zeros(size(zp{1,kk}));
    end
    %riga_da_valutare = 1;

    % eserguo il calcolo del delta su tutto il set di test
    for riga_da_valutare = 1:size(Actual_test,1)
        % Calcolo il delta dell'errore per ogni valore del test set
        Delta = RecalculateDelta(MiniBatch{riga_da_valutare,1},w,b,zp(riga_da_valutare,:),Actual_test(riga_da_valutare,:),yp(riga_da_valutare,:),NetFormat,tipo,tipoJ);      
        % Lo sommo in maniera cumulativa
        for ii = 1:size(Delta,2)
            Delta_tot{ii} = Delta_tot{ii} + Delta{ii};
        end
    end

    X = (1/(size(MiniBatch,1))).*[sum(cell2mat(MiniBatch(:,1)))];
    for jj = 1:size(zp,2)
        for  ii = 1:size(zp,1)
            Z{jj} = Z{jj} + zp{ii,jj};
        end
        Z{jj} = (1/(size(zp,1))).*Z{jj};
    end

[w,b,w_old,b_old] = RecalculateWB(X,w,b,Z,Delta_tot,LearningRate,NetFormat);
    

clear ii jj kk Actual Predicted Riga_da_valutare Z X Delta_tot
