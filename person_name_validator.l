%{
    #include<stdio.h>
    int yywrap(void)
    {
        return 1;
    }

%}

%%

([A-Z][a-z]+[ ]?)+            {printf("The name is valid person's name.\n");}
([A-Z]?[a-z]?[a-z]+[ ]?)+     {printf("It is a name of a person, But you should write down the first letter in capital form.\n");}
([^a-zA-Z\n]+?.)+             {printf("It an invalid name of a person.\n");}


%%


int main(){
    yylex();
    return 0;
}