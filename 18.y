%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
%}

%token A B NL C
%start Expr

%%
Expr:S NL { printf("Valid Expression\n");}
S:B X B { }
;
X:A X A{ }
|B X B {}
|C { }
; 	 
%%

int yyerror(char *msg)
{
printf("Invalid string\n");
}

int main()
{
yyparse();
}