function plotPCA(X,k, nf, titleText, legendText, lo)
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % plotting the PCA of matrix X with k principal components
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   
   close all;
   
   Y = PCA(X,k);
   
   X1=Y(1:nf,1); Y1=Y(1:nf,k); 
   X2=Y(nf+1:nf*2,1); Y2=Y(nf+1:nf*2,k);
   X3=Y((nf*2)+1:nf*3,1); Y3=Y((nf*2)+1:nf*3,k);
   
   plot(X1,Y1,'d',X2,Y2,'o',X3,Y3,'x', 'markersize',12, 'lineWidth', 5);
   set(gca, 'linewidth',4, 'fontsize', 13);
   legend(legendText, 'location',lo);
   
   title(titleText);
   
end