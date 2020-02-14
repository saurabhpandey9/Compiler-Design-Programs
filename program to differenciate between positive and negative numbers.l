%{ 

    int postiveno=0; 
    int negtiveno=0; 
%} 
  
DIGIT [0-9] 
%% 
  
\+?{DIGIT}+             postiveno++; 
-{DIGIT}+               negtiveno++; 
  
. ;    
%% 

 int yywrap(){} 

int main() 
{ 

    extern FILE *yyin ;
    yyin=fopen("positive.txt","r");
    yylex(); 
    printf("\nNo. of positive numbers: %d", postiveno); 
    printf("\nNo. of Negative numbers: %d", negtiveno);
    return 0; 
} 


