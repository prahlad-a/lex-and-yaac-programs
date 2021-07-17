%{
#include<stdio.h>
%}

%%
[a-zA-Z] {printf("Alphabetisidentified\n");}
[0-9] {printf("Numberisidentified\n");}
[\n\t] {printf("Newlineortaborspaceisidentified\n");}
. {printf("Specialcharisidentified\n");}
%%

int yywrap()
{
return 1;
}
void main()
{
yylex();
}