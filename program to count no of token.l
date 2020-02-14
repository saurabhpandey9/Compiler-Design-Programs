%{  
int n = 0 ;   
%}  
  
%%  
  
"while"|"if"|"else" {n++;}   
  

"int"|"float" {n++;}    
  

[a-zA-Z_][a-zA-Z0-9_]* {n++;}  
  

"<="|"=="|"="|"++"|"-"|"*"|"+" {n++;} 
  

[(){}|, ;]    {n++;}  
  

[0-9]*"."[0-9]+ {n++;}   
  
[0-9]+ {n++;}                         
  
.    ; 
%%  
   
int yywrap(){}
   
int main()  
  
{  

    extern FILE *yyin ;

    yyin=fopen("input3.txt","r");
      
    yylex(); 
      
    printf("total no. of token = %d\n", n);    

    return 0;
       
}  


