%{
#include "y.tab.h"
%}

%%
[0-9]+ { return Token;}
[\+\-\/\%] { return op; }
\n { return NL; }
. {return yytext[0];}
%%

int yywrap(){}