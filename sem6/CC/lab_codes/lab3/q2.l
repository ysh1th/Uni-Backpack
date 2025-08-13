%{
int cc=0, wc=0, lc=0;
%}
%%
[a-zA-Z]+ { wc++; cc+=strlen(yytext);}
\n {lc++; cc++;}
. {cc++;}
%%

int yywrap()
{
return 1;
}

int main()
{
yylex();
printf("char count: %d\n",cc);
printf("word count: %d\n",wc);
printf("line count: %d\n",lc);
}
