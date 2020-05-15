function [j,J] = FunzioneCosto(Predicted,Actual,NetFormat,tipoJ,ordine)
    %eseguo il calcolo per ogni valore dell'uscita
    % j è l'errore per ogni misurazione
    % J è l'errore totale su tutti i valori j e poi normalizzati per il
    % numero di uscite
    
    for ii = 1:size(Predicted,2) 
        switch tipoJ
            case 'entropy'      %Cross Entropy Loss
                if ordine == 0
                    j(ii) = Actual(ii)*log(Predicted(ii))+(1-Actual(ii))*log(1-Predicted(ii));
                elseif ordine == 1
                    j(ii) = ([Actual(ii) - 2*Actual(ii)*Predicted(ii) - Predicted(ii)]/[1 - Predicted(ii)^2]);
                end
            case 'squared'      %Squared Loss
                if ordine == 0
                    j(ii) = (1/2)*(Actual(ii)- Predicted(ii))^2;
                elseif ordine == 1
                    j(ii) = (Actual(ii)-Predicted(ii));
                end
            otherwise
                disp('Activation Funcion non presente');
                return
        end
    end
    
    J = 1/[size(Predicted,2)]*sum(j);
    
end