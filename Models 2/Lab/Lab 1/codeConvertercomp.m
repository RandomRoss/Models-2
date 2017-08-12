barcode = input('what is the Barcode: ','s');
count = 1;
for k = 2:5:length(barcode)-1 
    codes = barcode(k:k+4);
    T(count) = CodeConverter(codes);
    count = count + 1; 
end 
ck1 = sum(T == -1);
zip = T(1:9);
ck2  = 10 - mod(sum(zip),10);
if ck1 ~= 0
fprintf('There was an error in converting the zip code to numbers');
elseif ck2 ~= T(10)
    fprintf('The barcode was decoded incorrectly')
else 
fprintf('The Zip Code is: %i%i%i%i%i-%i%i%i%i',T(1:5),T(6:9));
end 