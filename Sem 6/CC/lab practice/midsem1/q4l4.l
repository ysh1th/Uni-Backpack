%{
#include<stdio.h>
#include<stdlib.h>
void stream();
void option1();
void campus();
%}

%%
"19"[0-9][0-9]["A"] { printf("year %s \n", yytext); }
"20"[0-2][0-4]["A"] { printf("year %s \n", yytext); }
"A" { printf("ece\n"); }
[1-4]|["7"]|["8"] {stream();}
["P"|"T"]["S"] {option1();}
[0-9]+ {if(yyleng > 4){
printf("invalid reg no.\n");
exit(0);
} else {
printf("registration index: %s\n", yytext);
}
}
["U"]|["G"]|["H"]|["P"] {campus();}
. {printf("mystery character %s\n", yytext);}
%%
void option1()
{
  if(strcmp(yytext, "PS") == 0)
  printf("practice school\n");
  else
  printf("Thesis\n");
}

void stream()
{
int x = atoi(yytext);

switch(x)
{
  case 1: {printf("chemical\n"); break;}
  case 2: {printf("civil\n"); break;}
  case 3: {printf("eee\n"); break;}
  case 4: {printf("mech\n"); break;}
  case 7: {printf("cs\n"); break;}
  case 8: {printf("electronics\n"); break;}
}
}

void campus()
{
  if(strcmp(yytext, "U") == 0)
  printf("campus: dubai");
  else if(strcmp(yytext, "G") == 0)
  printf("campus: goa");
  else if(strcmp(yytext, "H") == 0)
  printf("campus: hyd");
  else
  printf("campus: pilani");
}

int main(int argc, char *argv[]) {
yylex();
return 0;
}
