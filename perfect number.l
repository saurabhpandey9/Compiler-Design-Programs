%{ 

int flag,c,j,sum=0; 
%} 

/* Rule Section */
%% 
[0-9]+ {c=atoi(yytext); 
        
		for(j=1;j<c;j++) 
		{ 
		if(c%j==0){
        flag=flag+j;
        }
		} 
		if(flag==c) 
        {
        flag=0;
        printf("\n Perfect number"); 
        }
        else{
            flag=0;
            printf("\n Not perfect Number");
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