%%
"burger" { printf("burger spotted\n");}
\n { }
. { }
%%

int yywrap(){
return 1;
}

int main(){
yylex();
return 0;
}
