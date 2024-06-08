%{
#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>
bool inline_c = false;
bool inblock_c = false;
%}

%%
"/*" { inblock_c = true; }
"*/" { inblock_c = false; }
"//" { inline_c= true; }
\n {  
    if(inline_c) {inline_c = false;}
    if(!inblock_c) {fputc('\n', yyout);}
}
. {
    if(!inline_c && !inblock_c) {
    fputc(yytext[0], yyout);
    }  
}
%%

int main(int argc, char *argv[]){
if(argc != 3) {
printf(stderr, "usage %s input_file output_file\n", argv[0]);
return 1;
}

FILE *ip_file, *op_file;

ip_file = fopen(argv[1], "r");
if(ip_file == NULL) {
perror("error opening ip file\n");
return 1;
}

op_file = fopen(argv[2], "w");
if(op_file == NULL) {
perror("error opening op file\n");
return 1;
}

yyin = ip_file;
yyout = op_file;
yylex();

fclose(op_file);
fclose(ip_file);
return 0;
}
