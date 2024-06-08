%{
#include<stdio.h>
#include<stdlib.h>
%}
num [0-9]+

%%
{num} { printf("\n NUMBER"); }
\n { printf("\nnew line");}
"+" { printf("\n PLUS"); }
"-" { printf("\nMINUS"); }
"*" { printf("\nMUL"); }
"/" { printf("\nDIV"); }
"|" { printf("\nABS"); }
. { printf("\nMystery character"); }
%%

int yywrap(){
return 1;
}

int main(){
yylex();
return 0;
}
