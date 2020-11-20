%JR
function [x] = sust_at(A,b)
%La función 'sust_at' desarrolla el método de sustitución hacia atrás (regresivo) 
%Recibe una matriz triangular superior y el vector b de la ecuación Ax=b
%Regresa la solución del sistema i.e. el vector x
  [ n,n ] = size(A);
  A = [ A b ];
  x = zeros(n,1);
  x(n) = A(n,n+1)/A(n,n);
  for i = n-1:-1:1 
    s=0;
    for j = n:-1:i+1
      s = s+A(i,j)*x(j);
    end 
    x(i) = (A(i,n+1) - s)/A(i,i); 
  end 
  
end  
