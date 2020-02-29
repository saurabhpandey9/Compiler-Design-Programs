
%{ 
	
%} 

%% 

[0-9]{10} {printf("\nMobile Number Valid\n");} 

.+ {printf("\nMobile Number Invalid\n");} 

%% 

int yywrap(){

}

int main() 
{ 
	printf("\nEnter Mobile Number : "); 
	yylex(); 
	printf("\n"); 
	return 0; 
} 
