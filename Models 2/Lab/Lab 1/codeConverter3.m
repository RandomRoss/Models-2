function [ V ] = CodeConverter3( barcode )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
% variables being defined
barcode = input('what is the Barcode: ','s');
k = 1:length(barcode);
fd = 2;
ld = 6;
CodeSum = 0; 
barcode1 = barcode(fd:ld);
t = 0; % t = variable for times ran
% variables being defined 
while t > 10 
    
if strcmp(barcode1,'||...') %0
    V = 0;
    fprintf(V);
    fd = fd + 5;
    ld = ld +5;
    t = t+1;
elseif strcmp(barcode1,'...||') %1
    V = 1;
    fprintf(V);
        fd = fd + 5;
    ld = ld +5;
     t = t+1;
elseif  strcmp(barcode1,'..|.|') %2
    V = 2;
    fprintf(V);
        fd = fd + 5;
    ld = ld +5;
     t = t+1;
elseif strcmp(barcode1,'..||.') %3
    V = 3;
    fprintf(V);
        fd = fd + 5;
    ld = ld +5;
     t = t+1;
elseif strcmp(barcode1,'.|..|') %4
    V = 4;
    fprintf(V);
        fd = fd + 5;
    ld = ld +5;
     t = t+1;
elseif strcmp(barcode1,'.|.|.') %5
    V = 5;
    fprintf(V);
        fd = fd + 5;
    ld = ld +5;
     t = t+1;
elseif strcmp(barcode1,'.||..') %6
    V = 6;
    fprintf(V);
        fd = fd + 5;
    ld = ld +5;
     t = t+1;
elseif strcmp(barcode1,'|...|') %7
    V = 7;
    fprintf(V);
        fd = fd + 5;
    ld = ld +5;
     t = t+1;
elseif strcmp(barcode1,'|..|.') %8
    V = 8;
    fprintf(V);
        fd = fd + 5;
    ld = ld +5;
     t = t+1;
elseif strcmp(barcode1,'|.|..') %9
    V = 9;
    fprintf(V);
        fd = fd + 5;
    ld = ld +5;
     t = t+1;
else 
        V = -1;
        t = t + 10; 
end 

end 
end

