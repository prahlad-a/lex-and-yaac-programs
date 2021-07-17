%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
%}

%token str
%start S

%%
S:A A A X B B B NL {printf("Valid String\n");return 1;}
;
X:X A
|
%%

int yyerror(char *msg)
{
printf("Invalid string\n");
}

int main()
{
yyparse();
retrun 0;
}