
#include <stdio.h>

#include <stdlib.h>	
	void main (){
		float p, c, s;
		
		int m;
		
		printf("Please, Introduce the cost price in euros: ");
		
		scanf("%f",&c);
		
		printf("Please, Introduce profit margin ('%%'): ");
		
		scanf("%d",&m);
		
		p = c*(m / 100.0);
		
		s = c+p;
		
		printf("The selling price is %f euros", s);
		
		system ("pause");
	}
