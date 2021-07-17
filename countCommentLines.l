%{
#include<stdio.h>
#include<stdlib.h>
int single=0,multi=0;
%}
%%
\/\/[^\n]* {printf("comment\n"); single++;}
\/\*([^(\*\/|\n)]*|\/\/)*\*\/ {printf("singleline comment\n"); single++;}
\/\*([^(\*\/)]*|\/\/)*\*\/ {printf("multi line comment\n"); multi++;}
%%

int yywrap()
{
return 1;
}
void main()
{
yyin=fopen("comment_i.c","r");
yyout=fopen("commentfree.c","w");
yylex();
printf("Number of single comment is %d\n Number of multi line comment is %d\n",single,multi);
}