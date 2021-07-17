%{
#include<stdio.h>
int len=0,count=0;
%}

%%
([a-zA-Z0-9])+ {len = yyleng;
		printf("%d",len);
		if(len<8 && len>3)
		{count++;}}
\n {return 1};
.
%%

int yywrap(){
return 1;
}

int main(){
yylex();
printf("\n%d Words",count);
return 0;
}