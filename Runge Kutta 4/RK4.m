function RK4(a,b,h,w1);
  
  clc;
  
  %resultado i=1;
  i=1;
  t(i)=a;
  w(i)=w1;
  
 % Matriz con resultados iniciales  
  resultado(i,1)=t(i);
  resultado(1,2)=w(i);
  resultado(1,3)=y(t(i));
  resultado(1,4)=abs(resultado(1,3)-resultado(1,2));
  
  while(t(i)<b)
      
      %claculo de t(i)
      t(i+1)=t(i)+h;
      
      %claculo de w(i)
      k1=h*f(t(i), w(i));
      k2=h*f(t(i)+h/2,w(i)+ k1/2);
      k3=h*f(t(i)+h/2,w(i)+ k2/2);
      k4=h*f(t(i)+h,w(i)+ k3);
      
      w(i+1)= w(i) + (k1 + 2*k2 + 2*k3 + k4)/6;
      
      %Matriz con resultados del indice de i+1
      i=i+1;
      
      resultado(i,1)=t(i);
      resultado(i,2)=w(i);
      resultado(i,3)=y(t(i));
      resultado(i,4)=abs(resultado(i,3)-resultado(i,2));
      
      
  end
  
  %impresion en archivo de texto
  fileID = fopen('ejemplo30 RK4.txt','w');
        fprintf(fileID,'%8s %8s %8s %16s \r\n','t(i)','w(i)','y(t(i))','|y(t(i))-w(i)|');
        for r=1 : i
            for c=1 : 4
            fprintf(fileID,'%8.4f ',resultado(r,c));
            end
            fprintf(fileID,'\r\n');
        end
        fclose(fileID);
 resultado
end% function