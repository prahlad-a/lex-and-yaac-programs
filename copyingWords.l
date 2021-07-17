%{
#include<stdio.h>
int i;
%}

%%
(" ")s[a-zA-Z]* {for(i=1;i<yyleng;i++) fprintf(yyout,"%c",yytext[i]); fprintf(yyout,"\n");}
^s[a-zA-Z]* {fprintf(yyout,"%s ",yytext);}
.
\n
%%

int yywrap()
{
return 1;
}

int main()
{
yyin=fopen("input2.txt","r");
yyout=fopen("output2.txt","w");
yylex();
return 0;
}
