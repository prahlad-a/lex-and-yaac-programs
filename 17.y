%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
%}

%token A B NL C
%start Expr

%%
Expr:S NL { printf("Valid Expression\n");}
S:X Y { }
;
X:A X B { }
|A B
;
Y:Y C {}
|C C {}
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