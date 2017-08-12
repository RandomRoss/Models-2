function [ V ] = CodeConverter( barcode)

%   Detailed explanation goes here


if strcmp(barcode,'||...') %0
    V = 0;
elseif strcmp(barcode,'...||') %1
    V = 1;
elseif  strcmp(barcode,'..|.|') %2
    V = 2;
elseif strcmp(barcode,'..||.') %3
    V = 3;
elseif strcmp(barcode,'.|..|') %4
    V = 4;
elseif strcmp(barcode,'.|.|.') %5
    V = 5;
elseif strcmp(barcode,'.||..') %6
    V = 6;
elseif strcmp(barcode,'|...|') %7
    V = 7;
elseif strcmp(barcode,'|..|.') %8
    V = 8;
elseif strcmp(barcode,'|.|..') %9
    V = 9;
else 
        V = -1;
end 


end

