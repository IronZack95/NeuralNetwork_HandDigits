function Delta = RecalculateDelta(X,w,b,z,Actual,Predicted,NetFormat,tipo,tipoJ,varargin)
        % template per il delta
        Delta = z;

        %% Hidden - Output
        net = (z{end-1}*w{end})' + b{end};
        Delta{end} = [FunzioneCosto(Predicted,Actual,NetFormat,tipoJ,1)'.*ActivationFunction(net,tipo,1)].';
        %% Hidden - Hidden
    for hidden = 1 : size(NetFormat,2) - 3
        net = (z{end-hidden-1}*w{end-hidden})' + b{end-hidden};
        Delta{end-hidden} = Delta{end-hidden+1}*w{end-hidden+1}'.*ActivationFunction(net,tipo,1)';
    end
        %% Hidden - Input
        net = (X*w{1})' + b{1};
        Delta{1} = Delta{2}*w{2}'.*ActivationFunction(net,tipo,1)';
        
end 