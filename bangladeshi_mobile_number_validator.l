%{
#include<stdio.h>
int yywrap(void)
{
return 1;

}

%}

%%
"+8801"[3-9][0-9]{8}  {printf("Valid\n");}
"01"[3-9][0-9]{8} {printf("Valid\n");}
.*    {printf("not valid\n");}


%%



int main(){
yylex();
return 0;

}


