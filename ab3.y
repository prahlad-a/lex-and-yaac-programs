%{
#include<stdio.h>
#include<stdlib.h>
%}
%token A B NL
%start S
%%
S:A A A X B B B NL {printf("Valid String\n");return 1;}
;
X:A X B |
;
%%
int yyerror(char *msg)
{
printf("Invalid\n");
}
int main()
{
yyparse();
}