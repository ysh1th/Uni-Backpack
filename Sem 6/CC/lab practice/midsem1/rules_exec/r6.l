/*
if sees atleast one a/b/c among
even the string "abc" then 
prints the stmt one time
*/

%%
[abc]{1,} { printf("any of of them in string: %s", yytext);}
%%

int yywrap(){
return 1;
}

int main(){
yylex();
return 0;
}
