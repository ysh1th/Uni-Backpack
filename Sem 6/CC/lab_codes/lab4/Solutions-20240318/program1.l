
%{
#include<stdlib.h>
#include<stdio.h>
%}
%%
[0]*[1][0]+ {printf(“power of 2”);} //accepts a sting with only one 
// 1 followed by atleast one 0 and preceded by any number of zeros 
// and prints that the number is in power of 2.
[0-1]* {printf(“not power of 2”);} //accepts any sting with ones and zeros 
%%
int main()
{
printf(“\n Enter a binary number\n”);
yylex();
}
