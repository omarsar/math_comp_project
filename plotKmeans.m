function plotKmeans(X,k, d, titleName, legendTitle, lo)
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Plot the Kmeans given matrix X and k clusters
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    close all;
    
    [idx, C] = kmeans(X,k);
    predX = [X(:,:),idx];
    
    % plot using the first 2 columns
    plot3( predX(predX(:,d+1)==1, 1), predX(predX(:,d+1)==1, 2), predX(predX(:,d+1)==1, 3), 'bd', 'lineWidth', 5);
    hold on;
    plot3( predX(predX(:,d+1)==2, 1), predX(predX(:,d+1)==2, 2), predX(predX(:,d+1)==2, 3), 'go', 'lineWidth', 5);
    hold on;
    plot3( predX(predX(:,d+1)==3, 1), predX(predX(:,d+1)==3, 2), predX(predX(:,d+1)==3, 3), 'rx', 'lineWidth', 5);
    
    set(gca, 'linewidth',4, 'fontsize', 13);
    legend(legendTitle, 'location', lo );
    title(titleName)
    
    k
    idx'
end