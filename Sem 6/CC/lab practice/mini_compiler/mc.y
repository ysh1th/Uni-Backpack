%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
void yyerror(char *);
%}

%token T_HEADER T_INT T_CHAR T_FLOAT T_DOUBLE T_MAIN T_LB T_RB T_LCB T_RCB
%token T_NUMBER T_VARIABLE T_COMMA T_SC T_OP T_EQ
%left T_OP

%%
program: HEADER INT MAIN LB RB LCB BODY RCB
{
printf("valid\n");
}
;

BODY: DECL_STMTS PROG_STMTS
{
printf("token: body\n");
}
; 

HEADER: T_HEADER
{
    printf("Token: Header\n");
}
;
INT: T_INT
{
    printf("Token: Int\n");
};
MAIN: T_MAIN
{
    printf("Token: Main\n");
}
;
LB: T_LB
{
    printf("Token: Left_Bracket\n");
}
;
RB: T_RB
{
    printf("Token: Right_Bracket\n");
}
;

LCB: T_LCB
{
printf("token: left_curly_bracket\n");
}
;

RCB: T_RCB
{
printf("token: right_curly_bracket\n");
}
;

DECL_STMTS: DECL_STMT DECL_STMTS
| DECL_STMT
{
printf("token: statement\n");
}
;

DECL_STMT: T_INT VAR_LIST T_SC
| T_FLOAT VAR_LIST T_SC
| T_CHAR VAR_LIST T_SC
| T_DOUBLE VAR_LIST T_SC
;

VAR_LIST: T_VARIABLE T_COMMA VAR_LIST
| T_VARIABLE
;

PROG_STMTS: PROG_STMT PROG_STMTS
| PROG_STMT
;

PROG_STMT: T_VARIABLE T_EQ A_EXPR T_SC
;

A_EXPR: A_EXPR T_OP A_EXPR
| T_LB A_EXPR T_RB
| T_VARIABLE
| T_NUMBER
;
%%

void main()
{
printf("enter a c program: \n");
yyparse();
}

void yyerror(char *s)
{
printf("provided code is invalid\n", s);
exit(1);
}
