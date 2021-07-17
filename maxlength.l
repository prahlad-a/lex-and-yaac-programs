%{
#include<stdio.h>
int maxlength=0,x;
%}

%%
[a-zA-Z]+(" "|\n) {x=yyleng;
			if(maxlength>x)
			{
			 maxlength=x;
			};
}
			
%%

int yywrap()
{
return 1;
}

int main()
{
yyin=fopen("input1.txt","r");
yyflex();
printf("Maxlength = %d",maxlength);
return 0;
}
