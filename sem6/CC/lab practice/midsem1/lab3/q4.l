%{
#include<stdio.h>
#include<stdlib.h>
int num1, num2, diff;
%}
num [0-9]*
%%
{num}[02468] { 
printf("\neven number \n");
return atoi(yytext);
}

{num}[13579] { 
printf("\nodd number \n");
return atoi(yytext);
}
%%

int yywrap()
{
return 1;
}

int main(){
printf("enter even and odd number\n");
num1 = yylex();
num2 = yylex();
diff = num1 - num2;
if(diff % 2 != 0)
printf("\ncorrect\n");
else
printf("\nincorrect\n");

return 0;
}
