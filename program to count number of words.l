%{
int word=0,lowecase=0,uppercase=0,tabs=0;

%}

%%


[a-zA-z]* word++; 


end return 0;
%%

int yywrap(){}


int main(){

extern FILE *yyin ;

yyin=fopen("input2.txt","r");
yylex();

printf("No of word=%d\n",word);


return 0;

}