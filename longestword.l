%{
#include<stdio.h>
#include<string.h>
int count=0;
char str[50];
%}
%%
[a-zA-Z]+ {if(yyleng>count){
count=yyleng;strcpy(str,yytext);}
}
(" "|\n)
\.\' 
%%
int yywrap()
{
}
int main()
{
yyin=fopen("input3.txt","r");
yylex();
printf("count = %d\n",count);
printf("text =%s",str);
return 1;
}
