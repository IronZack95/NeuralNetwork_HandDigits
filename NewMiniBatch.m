%% Creo un nuovo Mini Batch

Actual_test = zeros(SizeMiniBatch,10);

for kk  = 1: SizeMiniBatch
    
    MiniBatch(kk,:) = IMM(cont_MiniBatch,:);   % prima riga immagine su un vettore

    Actual_test(kk,IMM{cont_MiniBatch,2}+1) = 1;
    
    cont_MiniBatch = cont_MiniBatch + 1;
end



