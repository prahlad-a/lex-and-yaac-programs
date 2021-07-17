%{
#include<stdio.h>
int count=0;
%}
%%
\-?[0-9]* {if(yytext[0]=='-')count++;}
%%
int yywrap()
{
return 1;
}
void main()
{
yylex();
printf("The total count is %d\n",count);
}