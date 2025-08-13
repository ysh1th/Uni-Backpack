
letter [a-zA-Z]
word {letter}+
digit [0-9]

%%
{word}/{digit} printf("found word %s followed by number %s\n", yytext, yytext+yyleng);
%%
