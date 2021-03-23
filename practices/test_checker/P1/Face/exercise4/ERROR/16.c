
/* Here, you must include the required libraries */

void main(){
	/* Here, you must write the source code  */
		float S, C, P;
	int M;
	 
	 printf("Please, Introduce the cost price in euros: ");
	 scanf("%f",&C);
	 
	 printf("Please, Introduce profit margin ('%'): ");
	 scanf("%d",&M);
	  
	 P=C*M/100;
	 S=P+C;
	 
	 printf("\n\The selling price is %f euros", S);
	 
}
