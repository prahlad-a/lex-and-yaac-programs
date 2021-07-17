%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
%}

%token A NL
%start Expr

%%
Expr:S NL { printf("Valid Expression\n");}
S:S A A { }
|A A{ } 	 
%%

int yyerror(char *msg)
{
printf("Invalid string\n");
}

int main()
{
yyparse();
}