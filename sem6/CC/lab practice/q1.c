#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main()
{
FILE *ptr = fopen("q1.txt", "r");
char ch;

if (NULL == ptr){
  printf("file cannot be opened");
}

printf("contents of file\n");

while(ch!= EOF){
  ch = fgetc(ptr);
  printf("%c", ch);
}

fclose(ptr);
return 0;
}

