%{
#include<stdio.h> 
%} 
  
%% 
\<[^(\>)]*\> {printf("htmltag\n"); fputs(yytext,yyout);}
. {printf("");}
%%     
  
int yywrap()
{
 return 1;
} 
       
int main() 
{ 
    yyin = fopen("input.html","r");
    yyout=fopen("output.html","w");  
    yylex();  
  
    return 0; 
} 