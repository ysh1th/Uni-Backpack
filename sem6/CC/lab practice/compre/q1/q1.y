%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
void yyerror(char *);
%}

%token T_a T_b NL

%%
stmt: S NL {printf("valid string\n"); exit(0);}

S: T_a S T_b
 |
 ;
%%

int yyerror(char *s){
printf("invalid string");
exit(1);
}

void main(){
printf("enter string: \n");
yyparse();
}
