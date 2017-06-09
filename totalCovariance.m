function tc = totalCovariance(X,d,u,n)
    % compute the covariance
  
    tc = (zeros(d,d));
    
    for i=1:n
        tc = tc + ((X(i,:)' - u') * (X(i,:)' - u')');
    end
    
    tc = tc*(1/(n-1));
end