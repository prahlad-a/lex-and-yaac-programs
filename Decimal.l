%{
#include<stdio.h>
%}
%%
([0-9]+(\.[0-9]+)|0?\.[0-9]+) {printf("Valid Decimal\n");}
.* {printf("Invalid decimal\n");}
%%
int yywrap()
{
return 1;
}

void main()
{
yylex();
}