function  number(MiniBatch,yp_max)
    
    ii = size(MiniBatch,1);
        subplot(1,2,1)
        PlotFigure(MiniBatch{ii,1},MiniBatch{ii,2})
        subplot(1,2,2)
        switch yp_max(ii)
            case 0
            img = imread('C:\Users\Utente\Desktop\HandDigits_NeuralNetwork\numbers\zero.jpg');
            case 1
            img = imread('C:\Users\Utente\Desktop\HandDigits_NeuralNetwork\numbers\uno.jpg');
            case 2
            img = imread('C:\Users\Utente\Desktop\HandDigits_NeuralNetwork\numbers\due.jpg');
            case 3
            img = imread('C:\Users\Utente\Desktop\HandDigits_NeuralNetwork\numbers\tre.jpg');
            case 4
            img = imread('C:\Users\Utente\Desktop\HandDigits_NeuralNetwork\numbers\quattro.jpg');
            case 5
            img = imread('C:\Users\Utente\Desktop\HandDigits_NeuralNetwork\numbers\cinque.jpg');
            case 6
            img = imread('C:\Users\Utente\Desktop\HandDigits_NeuralNetwork\numbers\sei.jpg');
            case 7
            img = imread('C:\Users\Utente\Desktop\HandDigits_NeuralNetwork\numbers\sette.jpg');
            case 8
            img = imread('C:\Users\Utente\Desktop\HandDigits_NeuralNetwork\numbers\otto.jpg');
            case 9
            img = imread('C:\Users\Utente\Desktop\HandDigits_NeuralNetwork\numbers\nove.jpg');
            otherwise
        end
        imagesc(img);
        axis image off
        title('Predicted');
    
end
