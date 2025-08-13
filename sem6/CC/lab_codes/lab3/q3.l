%{
#include<stdio.h>
int words=0, chars=0, lines=0;
%}
%%
[\t]+ {}
\n {lines++;}
[a-zA-Z]{6,} {words++; chars+=yyleng;}
. {
if(yyleng>=6)
{
chars+=yyleng;
}
}

%%
int main() 
{
yylex();
printf("number of words: %d\n", words);
printf("number of chars: %d\n", chars);
printf("number of lines: %d\n", lines);
return 0;
}


