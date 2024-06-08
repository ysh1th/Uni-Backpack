%{
#include<stdio.h>
#include<stdlib.h>

int count=0;
%}

%%
[01]+ { 
for(int i = 0; i <= yyleng; i++){
if(yytext[i] == '1'){
count++;
}
}
return 1;
}

. { 
printf("\ninvalid input\n");}
%%

int main(){
printf("enter binary number: ");
yylex();
if(count > 1){
printf("not a power of two\n");
} else {
printf("power of 2\n");
}
return 0;
}
