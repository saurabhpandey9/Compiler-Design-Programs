%{ 

int flag,c,j,sum=0,counter=0; 
%} 

/* Rule Section */
%% 
[0-9]+ {c=atoi(yytext); 
        counter=c;

        while(c>0){
            j=c%10;
            flag=flag+(j*j*j);
            c=c/10;

        }
        if (flag==counter){
            flag=0;
            printf("\n Armstrong Number");
        }
        else{
            printf("\n Not");
        }
	} 
%% 

int yywrap(){

}
int main() 
{ 
yylex(); 
return 0; 
} 