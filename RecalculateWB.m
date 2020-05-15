function [W_new,b_new,w_old,b_old] = RecalculateWB(X,w,b,Z,Delta,LearningRate,NetFormat)
        
      w_old = w;
      b_old = b;
      % Ricalcolo i valori di w2
      for ii = 1:size(X,2) 
            w{1}(ii,:) = w{1}(ii,:) + LearningRate*Delta{1}*X(ii);
      end
            b{1} = b{1} + LearningRate*Delta{1}';
            
      for kk = 2 : size(w,2)
          for ii = 1:size(Z{kk-1},2) 
                w{kk}(ii,:) = w{kk}(ii,:) + LearningRate*Delta{kk}*Z{kk-1}(ii);
          end
          b{kk} = b{kk} + LearningRate*Delta{kk}';
      end
      
      W_new = w;
      b_new = b;
end

