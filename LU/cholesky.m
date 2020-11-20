%JR
function [L] = cholesky(A)
%La función 'cholesky' regresa el factor L en la factorización de Cholesky L*L^t
%Recibe A una matriz simétrica definida positiva 
    [n,n] = size(A);
    L = zeros(n,n);
    L(1,1) = sqrt( A(1,1) );
    for j = 2:n 
        L(j,1) = A(j,1)/L(1,1);
        for i = 2:n-1 
            s1=0;
            for k = 1:i-1 
                s1 = s1 + ( L(i,k)^2 );
            end     
            L(i,i) = sqrt( A(i,i) - s1 );
            for p = i+1:n 
                s2 = 0;
                for k2 = 1:i-1 
                    s2 =s2 + ( L(j,k2)*L(i,k2) );
                end 
                L(j,i) = ( A(j,i) - s2 )/L(i,i);
            end  
        end 
        s3 = 0;
        for k3 = 1:n-1 
            s3 = s3 + ( L(n,k3)^2 );
        end 
        L(n,n) = sqrt( A(n,n) - s3 ); 
        
    end 
    
end
