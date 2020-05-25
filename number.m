function  number(MiniBatch,yp_max)
    
    ii = size(MiniBatch,1);
        subplot(1,2,1)
        PlotFigure(MiniBatch{ii,1},MiniBatch{ii,2})
        subplot(1,2,2)
        switch yp_max(ii)
            case 0
            img = imread('zero.jpg');
            case 1
            img = imread('uno.jpg');
            case 2
            img = imread('due.jpg');
            case 3
            img = imread('tre.jpg');
            case 4
            img = imread('quattro.jpg');
            case 5
            img = imread('cinque.jpg');
            case 6
            img = imread('sei.jpg');
            case 7
            img = imread('sette.jpg');
            case 8
            img = imread('otto.jpg');
            case 9
            img = imread('nove.jpg');
            otherwise
        end
        imagesc(img);
        axis image off
        title('Predicted');
    
end
