%{
#include<stdio.h>
#include<stdlib.h>
int cc = 0, wc = 0, lc = 1;
%}

%%
\n { lc++; }
[^\t\s] { }
[a-zA-Z]{6,} { wc++; cc += yyleng; }
. { 
if(yyleng >= 6){
cc++; 
}
}

%%

int main(){
printf("enter input to find line, char and word count: \n");
yylex();
printf("\nchars: %d", cc);
printf("\nwords: %d", wc);
printf("\nlines: %d", lc);
return 0;
}

int yywrap(){
return 1;
}
