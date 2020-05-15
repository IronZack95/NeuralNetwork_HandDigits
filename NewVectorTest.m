% New vector test
% Genero due vettori X_Test e Actual_test lunghi rispettivamente N_punti_test


range_x1_test = [0,10];
range_x2_test = [0,10];

x1_test = abs(sum(range_x1_test))*rand(N_punti_test,1);
x2_test = abs(sum(range_x2_test))*rand(N_punti_test,1);
X_test = [x1_test,x2_test];
Actual_test = zeros(N_punti_test,NetFormat(end));

for ii = 1:N_punti_test
    if funzione_test(X_test(ii,1),X_test(ii,2)) >= 0
        Actual_test(ii,1) =  1;  Actual_test(ii,2) =  0;   
    elseif funzione_test(X_test(ii,1),X_test(ii,2)) < 0
        Actual_test(ii,1) =  0;  Actual_test(ii,2) =  1;  
    end
end

Test = [X_test,Actual_test];
clear x1_test x2_test ii
