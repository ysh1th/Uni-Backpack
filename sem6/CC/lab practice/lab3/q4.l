%{
#include<stdlib.h>
#include<stdio.h>
int num1;
int num2;
%}
number [0-9]*
%%
{number}[0|2|4|6|8] {
printf("even number %d", yyleng);
return atoi(yytext);
}

{number}[1|3|5|7|9] {
printf("odd number %d", yyleng);
return atoi(yytext);
}
%%
int main(){
printf("\n input an even number and an odd number\n");
num1 = yylex();
num2 = yylex();
int comp = num1 - num2;
if (comp % 2 != 0)
printf("\n your input is correct, there is one even and one odd number");
else
printf("\n your input is incorrect, there is more than one even and one odd number");
return 1;
}

