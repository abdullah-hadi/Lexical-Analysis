%{
    #include<stdio.h>
    int positiveCount = 0;
    int negativeCount = 0;
    int yywrap (void)
    {
      return 1 ;
    }

%}


%%

[0-9]+          {printf("Positive number = ");ECHO; positiveCount++;}
"-"[0-9]+          {printf("Negative number = ");ECHO; negativeCount++;}


%%



int main()
{
    yylex();
    printf("number of positive numbers = %d, number of negative numbers = %d\n",positiveCount,negativeCount);

    return 0;
}
