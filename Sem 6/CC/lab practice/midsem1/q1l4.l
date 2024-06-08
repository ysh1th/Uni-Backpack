%{
#include<stdio.h>
#include<stdlib.h>
int ones;
%}

%%
[01]+ {
      for (int i = 0; i < strlen(yytext); i++) {
        if (yytext[i] == '1'){
         ones++;
        }
      }
      if(ones <= 1){
        printf("The input is a power of 2\n");
      } else {
        printf("The input is not a power of 2\n");
      }
}

. {
printf("invalid input\n");
}
%%

void check_power(){

}

int main(int argc, char *argv[]){
yylex();
check_power();
return 0;
}
