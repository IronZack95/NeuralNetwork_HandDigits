function [y,z] = NeuralNetwork(X,w,b,NetFormat,tipo)
    % y uscita della rete
    % z passi intermedi all'uscita di ogni nodo

    ordine = 0;
    % parto dall'ingresso
    
    hidden = 1;               
    net = (X*w{hidden})' + b{hidden};
    z{hidden} = ActivationFunction(net,tipo,ordine)';
    
    
    for hidden = 2 : size(w,2)                      % seleziono l'hiddel layer giusto
        net = (z{hidden-1}*w{hidden})' + b{hidden};
        z{hidden} = ActivationFunction(net,tipo,ordine)';
    end

    y = z{hidden};
   
end


