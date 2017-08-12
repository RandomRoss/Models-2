function [ V ] = codeConverter2( barcode )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
k = 1:length(barcode);
h = 2;
t = 6;
while t < k 
if strcmp(barcode,'||...') %0
    V = 0;
    h = h + 5;
    t = t + 5;
    fprintf(V);
elseif strcmp(barcode,'...||') %1
    V = 1;
        h = h + 5;
    t = t + 5;
    fprintf(V);
elseif  strcmp(barcode,'..|.|') %2
    V = 2;
        h = h + 5;
    t = t + 5;
    fprintf(V);
elseif strcmp(barcode,'..||.') %3
    V = 3;
        h = h + 5;
    t = t + 5;
    fprintf(V);
elseif strcmp(barcode,'.|..|') %4
    V = 4;
        h = h + 5;
    t = t + 5;
    fprintf(V);
elseif strcmp(barcode,'.|.|.') %5
    V = 5;
        h = h + 5;
    t = t + 5;
    fprintf(V);
elseif strcmp(barcode,'.||..') %6
    V = 6;
        h = h + 5;
    t = t + 5;
    fprintf(V);
elseif strcmp(barcode,'|...|') %7
    V = 7;
        h = h + 5;
    t = t + 5;
    fprintf(V);
elseif strcmp(barcode,'|..|.') %8
    V = 8;
        h = h + 5;
    t = t + 5;
    fprintf(V);
elseif strcmp(barcode,'|.|..') %9
    V = 9;
        h = h + 5;
    t = t + 5;
    fprintf(V);
else 
        V = -1;
 t = 100;
end 

    
end 

end

