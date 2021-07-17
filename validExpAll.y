%{
#include<stdio.h>
%}
%token INT NL
%left '+' '-' '*' '/'
%start Expr
%%
Expr:S NL { printf("Valid expression,value=%d\n",$$); return 1;}
;
S:S'+'E { $$=$1+$3; }
|S'-'E { $$=$1-$3; }
|E { $$=$1; }
;
E:E'*'F { $$=$1*$3; }
|E'/'F { $$=$1/$3; }
|F { $$=$1; }
;
F:INT {}
%%
int yyerror(char *msg)
{
printf("Invalid Expression");
}

int main()
{
yyparse();
}

