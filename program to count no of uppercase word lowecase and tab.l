%{
int word=0,lowecase=0,uppercase=0,tabs=0;

%}

%%


[a-zA-z]* word++; 

[a-z] {lowecase++;}

[A-Z] uppercase++;

\t tabs++;



end return 0;
%%

int yywrap(){}


int main(){

extern FILE *yyin ;

yyin=fopen("input2.txt","r");
yylex();

printf("No of word=%d\nNo of lowecase=%d\nNo of uppercase=%d\nNo of tabs=%d\n" ,word,lowecase,uppercase,tabs);


return 0;

}


