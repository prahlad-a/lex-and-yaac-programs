%{
#include<stdio.h>
%}

%%
(0|1)*(\.)?(0|1)* {printf("valid Binary");}
.
\n
[2-9]+(\.)*[0-9]* {printf("Invalid Binary");}
%%

int yywrap(){
return 1;
}

int main()
{

yylex();
return 0;
}
