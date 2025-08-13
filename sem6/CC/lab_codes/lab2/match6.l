letter [a-zA-Z]
number [0-9]
%%
{letter}+ printf("One or more occurances of a letter");
{number}+ printf("atleast one occurance of number");
{number}+.{number}+ printf("Decimal");
{number}+(.{number}+)?(e|E[+-]?{number}+) printf("Exponent");
%%
