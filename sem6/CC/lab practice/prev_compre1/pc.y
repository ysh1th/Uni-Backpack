%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
void yyerror(char *);
%}

%token T_FOR T_INT T_ID T_NUM T_PROGRAM T_P T_N

%%
FOR_LOOP: T_FOR '(' VARIABLE '=' EXPRESSION ';' EXPRESSION ';' INCDEC ')' STATEMENT
        {printf("Valid\n");}
        ;

VARIABLE: T_INT T_ID {printf("variable decl found\n");}
        | T_ID {printf("variable found\n");}
        ;

EXPRESSION: T_NUM {printf("expression found");}
          | T_ID {printf("expression found");}
          | T_ID '+' T_NUM {printf("expression found");}
          | T_ID '-' T_NUM {printf("expression found");}
          | T_ID '+' T_ID {printf("expression found");}
          | T_ID '-' T_ID {printf("expression found");}
          | T_ID '>' T_NUM {printf("expression found");}
          | T_ID '<' T_NUM {printf("expression found");}
          | T_ID '>' T_ID {printf("expression found");}
          | T_ID '<' T_ID {printf("expression found");}
          ;

STATEMENT: '{' T_PROGRAM '}' {printf("Statement found\n");}
         | FOR_LOOP {printf("Statement found\n");}
         | ASSIGNMENT {printf("Statement found\n");}
         | '{' ASSIGNMENT ';' '}' {printf("Statement found\n");}
         ;

ASSIGNMENT: VARIABLE '=' EXPRESSION {printf("Statement found\n");}
          ;

INCDEC: VARIABLE T_P
      | VARIABLE T_N
      | ASSIGNMENT
      ;
%%

void yyerror(char *s){
printf("error in input\n");
exit(1);
}

int main(void){
printf("enter program: \n");
yyparse();
return 0;
}
