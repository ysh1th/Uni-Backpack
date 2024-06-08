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
"+" return PLUS;
"-" return MINUS;
"*" return MUL;
"/" return DIV;
"\n" return NL;
"(" return LP;
")" return RP;
[ \t] ; /* skip whitespace */
. printf("invalid character");
%%
int yywrap(void) {
return 1;
}