%{
    #include<stdio.h>
    int yywrap(void)
    {
        return 1;
    }


%}


%%

[0-9]+"."[0-9]+ {printf("Floating-point number: "); ECHO ;}
[0-9]+          {printf("Invalid floating-point number: "); ECHO;}
"."[0-9]+          {printf("Invalid floating-point number: "); ECHO;}
[0-9]+"."          {printf("Invalid floating-point number: "); ECHO;}


%%

int main(){
    yylex();
    return 0;


}
