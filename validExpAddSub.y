%{
#include<stdio.h>
%}
%token Token op NL
%start S
%%
S:E NL {printf("Valid expression\n"); return 1;}
E:E op F {}
|F {}
;
F:Token { }
;
%%
int yyerror(char *msg)
{
printf("Invalid Expression");
}

int main()
{
yyparse();
}