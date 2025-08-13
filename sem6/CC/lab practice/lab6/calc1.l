%{
#include<stdlib.h>
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
"\n" ;
. printf("invalid char");
%%

int yywrap(void) {
return 1;
}
