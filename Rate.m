%% Rate
temp = 0;
for ii = 1:size(MiniBatch,1)
% vedo il rate di quante ne azzecco dentro il mini batch
    if MiniBatch{ii,end} == yp_max(ii)
            temp = temp +1;
    end
end
MiniBatch_rate(Epoch_tot) = temp/size(MiniBatch,1);

clear temp