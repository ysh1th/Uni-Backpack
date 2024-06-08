%{ 
#include <stdio.h>
#include <stdlib.h>
%}
%%
[01]+ {
  int i;
  int count = 0;
  for(i = yyleng-1; i>=0; i--) 
  {
    if(yytext[i] == '1') 
    {
    count++;
    }
  }
  if(count==1)
  {
  printf("%s is a power of two\n", yytext);
  } else {
  printf("%s is not a power of two\n", yytext);
  }
}
%%
int main() {
  yylex();
  return 0;
}
