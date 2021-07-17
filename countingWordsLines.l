%{
#include<stdio.h>
int l=0,w=0,c=0;
%}

%%   
[a-zA-Z]*\n {l++;w++;c+=yyleng-1;}
[a-zA-Z]+(" "|\t) {w++;c+=yyleng-1;}
%%

int yywrap()
{
	return 1;
}

int main()
{
yyin=fopen("input2.txt","r");
yylex();
printf("Lines = %d\t words= %d\t charecters= %d",l,w,c);
return 1;
}
