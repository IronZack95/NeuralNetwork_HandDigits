% Creo la rete

% il primo è il numero di nodi in ingresso, l'ultimo in uscita

for ii = 1 : size(NetFormat,2) -1
    % Autoname
    range = [-1/sqrt(NetFormat(ii)),1/sqrt(NetFormat(ii))];
    w{ii} = (abs(range(1))+abs(range(2)))*(rand(NetFormat(ii),NetFormat(ii+1))-0.5);
    b{ii} = zeros(NetFormat(ii+1),1);
end

clear range ii

