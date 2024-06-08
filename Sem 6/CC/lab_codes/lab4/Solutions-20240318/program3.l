%{

#include<stdio.h>

%}




%%

\/\/(.*) {/*Single line comment*/};			

\/\*(.*\n)*.*\*\/  {Regular expression for multi line comment};			

%%


int main()

{

yyin=fopen("input.c","r");

yyout=fopen("out.c","w");

yylex();

return 0;
}
