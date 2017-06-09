function completeLinkage(d, n, fileName, titleText)
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Show dendrogram by complete linkage
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    pkg load io;
    pkg load statistics;
    
    close all;
    
    fin = fopen(fileName);
    fgetl(fin); fgetl(fin); fgetl(fin); 
    A = fscanf(fin, '%f', [d+1, n]);
    A = A'; X = A(:,1:d);
    Y = pdist(X, 'euclidean');
    Z = linkage(Y, 'complete');
    dendrogram(Z,n, 'lineWidth', 5);
    set(gca, 'linewidth',4, 'fontsize', 11);
    title(titleText);
   
end