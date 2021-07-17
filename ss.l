%{#include<stdio.h>
%}

%%
[a-z] {printf ("Lowercase  ",yytext);

%%
int yywrap(){
return 1;
}
int main(){
printf("Enter the string or a charecter");
yylex();
return 0;
}