%{
#include<stdlib.h>
#include<stdio.h>
%}
%%
[0]*[1][0]+ {printf("power of 2");} 

[0-1]* {printf("not power of 2");} 
%%
int main()
{
printf("\n Enter a binary number\n");
yylex();
}
