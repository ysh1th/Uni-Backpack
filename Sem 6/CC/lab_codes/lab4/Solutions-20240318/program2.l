/* Program to add line numbers to a given file*/

%{ 

int line_number = 1;  
%} 
  

line .*\n     
  

%% 

{line} { printf("%d %s", line_number++, yytext); }  
  
 

int main() 

{ 
yyin = fopen("input.c","r");  

yylex();   
return 0; 

}
