/*
This code writes the line indexed content of i/p file into o/p file
*/

%{
#include<stdio.h>
#include<stdlib.h>
int line_number = 2;
%}

%%
\n {
    fprintf(yyout, "\n%d:", line_number++);
   }

. {
    fprintf(yyout, "%s", yytext);
}
%%

int main(int argc, char *argv[]){

  FILE *ip_file = fopen(argv[1], "r");
  if (ip_file == NULL){
     printf("Error: cannot open file\n");
   return 1;
  }

 FILE *op_file = fopen(argv[2], "w");
  if (op_file == NULL){
     printf("Error: cannot open file\n");
   return 1;
  }

  yyin = ip_file;
  yyout = op_file;
  fprintf(yyout, "1: ");
  yylex();
  fclose(ip_file);
  fclose(op_file);
  return 0;
}
