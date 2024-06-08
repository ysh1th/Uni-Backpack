%{
#include<stdio.h>
#include<string.h>


%}

INT ["int"]
FLOAT ["float"]
IDENT [a-zA-Z]+
VAR_DECLARE ({INT}|{FLOAT})" "{IDENT}

%%
{VAR_DECLARE} {  }
%%

int main(){
yylex();
return 0;
}
