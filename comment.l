%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
\/\/[^\n]* { }
\/\*([^(\*\/|\n)]*|\/\/)*\*\/ { }
\/\*([^(\*\/)]*|\/\/)*\*\/ { }
%%
int yywrap(){
return 1;
}

int main(){
yyin=fopen("comment_i.c","r");
yyout=fopen("commentfree.c","w");
yylex();
return 0;
}