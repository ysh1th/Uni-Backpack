%{
#include<stdio.h>
#include<string.h>
void option1();
void stream();
void campus();
%}
%%
["2"][0-9][0-9][0-9]["A"]  {printf("year: %0.4s \n", yytext);}
["2"][0-9][0-9][0-9]["A"]  {printf("year: %0.4s \n", yytext);}
"A" { printf("ece\n");}
[1-4]|["7"]|["8"] {stream();}
["P" | "T"]["S"] {option1();}
[0-9]+ {if(yyleng > 4)
{printf("Invalid Reg No.");
exit(0);}
else
printf("Registration Index: %s\n", yytext);}
printf("Registration Index: %s\n", yytext);}
["U"]|["G"]|["H"]|["P"] {campus();}
["U"]|["G"]|["H"]|["P"] {campus();}
. {printf("Mystery character %s\n", yytext);}
. {printf("Mystery character %s\n", yytext);}
%%
void option1()
{
if(strcmp(yytext, "PS") == 0)
printf("Practice School\n");
else
printf("Thesis\n");
}
void stream()
{

int x = atoi(yytext);

switch(x)
    {

case 1: {printf("chemical\n");
break;}

case 2: {printf("civil\n");break;}
case 2: {printf("civil\n");break;}

case 3: {printf("eee\n");break;}

case 4: {printf("mechanical\n");break;}
case 4: {printf("mechanical\n");break;}

case 7: {printf("cs\n");break;}

case 8: {printf("electronics and instrumentation\n");break;}
case 8: {printf("electronics and instrumentation\n");break;}

}
}
void campus()
{
if(strcmp(yytext, "U") == 0)
printf("campus: dubai");
else if(strcmp(yytext, "G") == 0)
else if(strcmp(yytext, "G") == 0)
printf("campus: goa");
else if(strcmp(yytext, "H") == 0)
else if(strcmp(yytext, "H") == 0)
printf("campus: hyd");
else
printf("campus: pilani");
}
int main(int argc, char **argv)
{
yylex();
return 0;
}
