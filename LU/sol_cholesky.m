%JR
function sol_cholesky(A,b)
%La función 'sol_cholesky' brinda la solución de la ecuación Ax=b
%Recibe A una matriz simétrica definida positiva y el vector b
    L = cholesky(A);
    U = L';
    y = sust_ad(L,b);
    x = sust_at(U,y)
end