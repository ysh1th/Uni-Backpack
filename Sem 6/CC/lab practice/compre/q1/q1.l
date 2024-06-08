%{
#include<stdio.h>
#include<stdlib.h>
#include "y.tab.h"
%}

%%
[aA] {return T_a;}
[bB] {return T_b;}
\n {return NL;}
. {return yytext[0];}
%%

intyylexnt yywrap(void){
return 1;
}
