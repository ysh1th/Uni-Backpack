%{
#include <stdlib.h>
void yyerror(char *);
#include "y.tab.h"
%}
%%
[0-9]+ {
yylval = atoi(yytext);
return INTEGER;
}
[a-z] { 
yylval = *yytext - 'a';
//printf ("%d,\t %s \t %d", yylval, yytext, *yytext);
return VAR;
}
"+" return PLUS;
"-" return MINUS;
"*" return MUL;
"/" return DIV;
"\n" return NL;
"(" return LP;
")" return RP;
"=" return EQ;
[ \t] ; /* skip whitespace */
. printf("invalid character");
%%
int yywrap(void) {
return 1;
}