%{
#include <stdio.h>
int id(int a);
%}

%%
^20[0-9][0-9] {printf("year: %s\n", yytext);}
"A2" {printf("\nCHEM");}
"A3" {printf("\nCIVIL");}
"A4" {printf("\nMECH");}
"A6" {printf("\nBIOT");}
"A7" {printf("\nCS");}
"U" {printf("\nDXB");}
"P" {printf("\nPILANI");}
"G" {printf("\nGOA");}
"H" {printf("\nHYDERABAD");}
"PS" {printf("\n Practice School");}
"TS" {printf("\nThesis");}
[0][0-9]+ {id(atoi(yytext));}

%%

int main() {
    yylex();
    return 0;
}
int id(int a){
printf("\nID: %d", atoi(yytext));
return 0;
}
