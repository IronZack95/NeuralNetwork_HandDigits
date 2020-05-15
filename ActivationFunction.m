function y_fun = ActivationFunction(t,tipo,ordine)

sigmoid = @(t) 1./(1+exp(-t));

        switch tipo
            case 'sigmoid'
                if ordine == 0
                    y_fun = sigmoid(t);
                elseif ordine == 1
                    y_fun = sigmoid(t).*(1-sigmoid(t));
                end
            case 'tanh'
                if ordine == 0
                    y_fun = tanh(t);
                elseif ordine == 1
                    y_fun = 1-tanh(t).^2;
                end
            otherwise
                disp('Activation Funcion non presente');
        end
end