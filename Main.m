%  %% Funzione Main
clc
clear all
close all
f1 = figure('Name','W and bias complete');
f2 = figure('Name','Mini Batch');

f3 = figure('Name','W1');
f4 = figure('Name','number');
f5 = figure('Name','Learning Rate');

cont_MiniBatch = 1;
clf()

%------------------ Parametri ------------------

NetFormat = [28*28,16,16,10];       
SizeMiniBatch = 10;                     %dimensione Mini Batch
LearningRate = 0.5;
tipo = 'sigmoid';
% tipo = 'tanh';
tipoJ = 'squared';


%% Creo nuova rete 
    NewNetwork
    
    Dataset_range = [1,60000];
    DecodeNumber
   
    Epoch_tot = 0;
    MiniBatch_rate = 0;
    maxEpoch_stamp = 50;
    
while(Epoch_tot < size(IMM,1)/SizeMiniBatch)
    
    Epoch = 0;
    for Epoch = 1:maxEpoch_stamp
        
        clc
        Epoch_tot = Epoch_tot +1;
        disp(['Epoch: ',num2str(Epoch_tot)])

        %% Creo nuovo vettore di test MINI-Batch
         NewMiniBatch

        %% Foreward su tutto il Mini-Batch
         Foreward
         
        %% Valuto il rate di apprendimento
         Rate

        %% Stampo valori del training 
         StampoForeward

        %% Cerco il minimo
         BackPropagation
%          GestioneFigure
    end
    %% Plot IA
    %% Decommento per stampare vettore di test Mini-Batch
    GestioneFigure_2
    
end