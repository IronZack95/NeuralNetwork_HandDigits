
hold on
for ii = 1:size(X_test,1)
    if funzione_test(X_test(ii,1),X_test(ii,2)) >= 0
        plot(X_test(ii,1),X_test(ii,2),'ro');
    elseif funzione_test(X_test(ii,1),X_test(ii,2)) < 0
        plot(X_test(ii,1),X_test(ii,2),'bx');
    end
end

ezplot(funzione_test,[0,10]);

hold off
title('Mini-Batch')
xlabel('X1')
ylabel('X2')
clear  molt range_x1_test range_x2_test ii
