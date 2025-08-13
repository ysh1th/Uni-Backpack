%{
#include<stdlib.h>
#include<stdio.h>
int num_1;
int num_2;
%}
number [0 - 9]*
%%
{number}[0 | 2 | 4 | 6 | 8] {
printf("Even number %d", yyleng);
return atoi(yytext);
}

{number}[1 | 3 | 5 | 7 | 9] {
printf("Odd number %d", yyleng);
return atoi(yytext);
}
%%

int yywrap(){
return 1;
}

int main()
{
printf("\nInput an even number and an odd number\n");
num_1 = yylex();
num_2 = yylex();
int diff = num_1 - num_2;
if (diff % 2 != 0)
printf("\nYour inputs were checked for correctness, \nResult : Correct\n");
else
printf("\nYour inputs were checked for correctness,\nResult : Incorrect\n");
return 1;
}
