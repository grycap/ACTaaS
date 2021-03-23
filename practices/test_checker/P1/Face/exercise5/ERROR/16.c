
/* Here, you must include the required libraries */

void main(){
	/* Here, you must write the source code  */
	int a; 
    int b;
    int m;
    int s;
    int i;
    int r;
    
	printf("Please, Introduce the number of agendas: ");
	scanf("%int", &a);
	
	b=a/50;
	r=a%50;
	/*printf("%i %i", b, r);*/
	m=r/20;
	r=r%20;
	/*printf("\n%i %i", m, r);*/
    s=r/5;
    r=r%5;
    /*printf("\n%i %i", s, r);*/
    i=r;
	
    printf("%i BIG BOXES -- %i MEDIUM BOXES -- %i SMALL BOXES -- %i Individual agendas", b, m, s, i);
	
	
	
	
	
	

}
