%{
#include<stdio.h>
  int yywrap (void )
	{
		return 1;
	}

%}

%%
[0-9]+           {printf("Integer number: %s\n",yytext);}
[0-9]+"."[0-9]+  {ECHO; printf(" Floating point number\n");}

%%

int main()
{
   yylex();
   return 0;
}
