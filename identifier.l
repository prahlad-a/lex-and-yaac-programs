%{
#include<stdio.h>
%}

%%
[a-zA-Z_][0-9A-Za-z_]* {printf("Valid Identifier\n");}
.* {printf("Invalid Identifier\n");}
%%

int yywrap()
{
return 1;
}

void main()
{
yylex();
}
