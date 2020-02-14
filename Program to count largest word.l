%{ 
  int counter = 0; 

%} 
  
%% [a - zA - Z] + {if (yyleng > counter) {  counter = yyleng;  } } 
end return 0;
%% 

int yywrap(){}
  
int main() { 

    extern FILE *yyin ;

    yyin=fopen("input2.txt","r");
  yylex(); 
  printf("largest: Hello"); 
  return 0;
} 