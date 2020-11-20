%JR
function [x] = sust_ad(A,b)
%La función 'sust_ad' desarrolla el método de sustitución hacia adelante (Progresivo)
%Recibe una matriz triangular inferior L y el vector b de la ecuación Ax=b
%Regresa la solución del sistema i.e. el vector x
  [ n,n ] = size(A);
  A = [ A b ]; 
  x = zeros(n,1);
  x(1)=A(1,n+1)/A(1,1);
  for i = 2:n
    s = 0;
      for j =1:n-1
        s = s+A(i,j)*x(j);
      end 
    x(i) = (A(i,n+1)-s)/A(i,i);
  end 
end %func
