%{
#include<stdio.h>
#include<stdlib.h>
int line_number = 2;
%}

%%
\n {
    printf("\n%d:", line_number++);
   } 

. {
    printf("%s", yytext);
}
%%

int main(int argc, char *argv[]){
  FILE *file = fopen(argv[1], "r");
  if (file == NULL){
     printf("Error: cannot open file\n");
   return 1;
  }
  yyin = file;
  printf("1: ");
  yylex();
  fclose(file);
  return 0;
}
