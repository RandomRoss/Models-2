% variables being defined
barcode = input('what is the Barcode: ','s');
k = 1:length(barcode);
fd = 2;
ld = 6;
V = 0;
CodeSum = 0; 
t = 0; % t = variable for times ran
% variables being defined 
fprintf('The zip code: ');
while t > 10
    CodeConverer(barcode(fd:ld))
 if V == 0 
     fd = fd + 5;
     ld = ld +5;
     CodeSum = CodeSum + V;
     t = t + 1; 
     fprintf(V);
 elseif V == 1 
     fd = fd + 5;
     ld = ld +5;
     CodeSum = CodeSum + V;
     t = t + 1; 
     fprintf(V);
 elseif V == 2
     fd = fd + 5;
     ld = ld +5;
     CodeSum = CodeSum + V;
     t = t + 1; 
     fprintf(V);
 elseif V == 3 
     fd = fd + 5;
     ld = ld +5;
     CodeSum = CodeSum + V;
     t = t + 1; 
     fprintf(V);
 elseif V == 4 
     fd = fd + 5;
     ld = ld +5;
     CodeSum = CodeSum + V;
     t = t + 1; 
     fprintf(V);
 elseif V == 5
     fd = fd + 5;
     ld = ld +5;
     CodeSum = CodeSum + V;
     t = t + 1; 
     fprintf(V);
 elseif V == 6 
     fd = fd + 5;
     ld = ld +5;
     CodeSum = CodeSum + V;
     t = t + 1; 
     fprintf(V);
  elseif V == 7
     fd = fd + 5;
     ld = ld +5;
     CodeSum = CodeSum + V;
     t = t + 1; 
     fprintf(V);
  elseif V == 8
     fd = fd + 5;
     ld = ld +5;
     CodeSum = CodeSum + V;
     t = t + 1; 
     fprintf(V);
   elseif V == 9
     fd = fd + 5;
     ld = ld +5;
     CodeSum = CodeSum + V;
     t = t + 1; 
     fprintf(V);
 else
     clc;
     fprintf('There was an error in converting the zip code to numbers');
     
 end
    
end
