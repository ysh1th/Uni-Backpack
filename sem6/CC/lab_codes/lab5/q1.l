%option yylineno
%{
        #include<stdio.h>
        #include"y.tab.h"
        #include<math.h>
%}

%%
"#include<stdio.h>" {return HEADER;}
"int"   {return INT;}
"main"  {return MAIN;}
"(" {return LB;}
")" {return RB;}
"{" {return LCB;}
"}" {return RCB;}
[\n\t ]+ {/*new line or space*/}
. {printf("Unmateched character %s in line no. %d of the input \n", yytext, yylineno);}
%%

int yywrap(void)
{
return 1;
}
