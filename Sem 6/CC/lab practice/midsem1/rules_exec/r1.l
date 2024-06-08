
%%
abc/123 { printf("r1 followed by r2"); }
. { }
%%
 

int main(){
yylex();
return 0;
}
