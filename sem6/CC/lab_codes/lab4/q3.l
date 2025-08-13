%{
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
bool inline_comment = false;
bool inblock_comment = false;
%}

%%
"/*" { inblock_comment = true; }
"*/" { inblock_comment = false; }
"//" { inline_comment = true; }
\n {
    if (inline_comment){inline_comment=false;}
    if (!inblock_comment){fputc('\n', yyout);}
}
.   { if (!inline_comment && !inblock_comment) {fputc(yytext[0], yyout);} }
%%

int main(int argc, char *argv[]) {
if(argc != 3) {
printf(stderr, "Usage %s input_file output_file\n", argv[0]);
return 1;
}

FILE *input_file, *output_file;

input_file = fopen(argv[1], "r");
if(input_file == NULL) {
perror("error opening file\n");
return 1;
}

output_file = fopen(argv[2], "w");
if(output_file == NULL) {
perror("error opening file: %s\n");
// fclose(output_file);
return 1;
}

yyin = input_file;
yyout = output_file;
yylex();

fclose(output_file);
fclose(input_file);
return 0;
}
