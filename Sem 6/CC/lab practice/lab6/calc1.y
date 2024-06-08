%{
#include <stdio.h>
#include<stdlib.h>
int yylex(void);
void yyerror(char *);
%}

%token INTEGER PLUS MINUS NL

%%
program : expr NL { printf("%d\n", $1);};
expr : INTEGER { $$ = $1; }
     | expr PLUS expr { $$ = $1 + $3;}
     | expr MINUS expr { $$ = $1 - $3; };
%%

void yyerror(char *s) {
fprintf(stderr, "%s\n", s);
}

int main(){
yyparse();
return 0;
}
