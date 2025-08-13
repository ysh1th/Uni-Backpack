%{
#include <stdio.h>
int yylex(void);
void yyerror(char *);
int sym[26];
%}
%token INTEGER PLUS MINUS NL MUL DIV LP RP VAR EQ
%left PLUS MINUS
%left MUL DIV
%%
program:
program stmt NL
|
;
stmt:
expr {printf("%d\n", $1);}
| VAR EQ expr { sym[$1] = $3; }
;
expr:
INTEGER { $$ = $1; }
| VAR { $$ = sym[$1]; }
| expr PLUS expr { $$ = $1 + $3; }
| expr MINUS expr { $$ = $1 - $3; }
| expr MUL expr { $$ = $1 * $3; }
| expr DIV expr { $$ = $1 / $3; }
| LP expr RP { $$ = $2;}
;
%%
void yyerror(char *s) {
printf("%s\n", s);
}
int main() {
yyparse();
return 0;
}