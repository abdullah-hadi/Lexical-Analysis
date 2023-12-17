%{
    #include<stdio.h>
    int yywrap(void)
    {
        return 1;
    }

%}

%%

[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}   {printf("Email is valid: %s\n", yytext);}
.                                                 {printf("Email is invalid\n");}

%%


int main(){
    yylex();
    return 0;
}