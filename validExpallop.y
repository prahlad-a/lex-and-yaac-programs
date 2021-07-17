%{
#include<stdio.h>
%}
%token INT
%left '+' '-'
%left '*' '/'
%%
Expr:E {printf("valid expression value is=%d",$1);return 1;}
;
E:E'+'E {$$=$1+$3;}
|E'-'E {$$=$1-$3;}
|E'*'E {$$=$1*$3;}
|E'/'E {$$=$1/$3;}
|INT {$$=$1;}
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

