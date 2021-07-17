%{
int count=0;
%}

%%
[a-z] {count++;}
.
\n {printf("%d",count);}
%%

int yywrap()
{
return 1;
}

int main()
{
yylex();
return 0;
}
