%{
#include "y.tab.h"
%}

%%
[0-9] { yylval=atoi(yytext); return INT;}
[\+\-\/\%] { return yytext[0]; }
\n { return NL; }
. {return yytext[0];}
%%

int yywrap(){}