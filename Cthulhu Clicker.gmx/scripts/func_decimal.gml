//This script converts the number to two decimal places
var number = argument[0];
var decimal_multiplier = power(10,argument[1]); //eg. 10 ^ 2 (2 being the number of decimal points wanted)

return (floor(number*decimal_multiplier)/decimal_multiplier);

