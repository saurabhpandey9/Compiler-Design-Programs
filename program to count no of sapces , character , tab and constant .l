%{

int lines=0,spaces=0,keyword=0,constant=0,character=0;

%}

%%

"I" | "is" | "a" keyword++;

[ ] spaces++;

\n lines++;

[0-9] constant++;

[a-zA-Z]  character++;

end return 0;
%%

int yywrap(){}

int main(){

extern FILE *yyin ;

yyin=fopen("input1.txt","r");
yylex();

printf("No of keywords=%d\nNo of spaces=%d\n No of lines=%d\n No of constant=%d\n No of character=%d",keyword,spaces,lines,constant,character);

return 0;

}