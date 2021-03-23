
/* Here, you must include the required libraries */
#include <stdio.h>
void main(){
	char n[80], Fs[80],Ss[80],NIF[10],sex;
	int d,m,y;
	
	printf("Please, introduce the next information:");
	printf("\nName: ");
	scanf("%s",n);
	
	printf("First surname: ");
	scanf("%s",Fs);
	
	printf("Second surname: ");	
	scanf("%s",Ss);
	
	printf("NIF: ");
	scanf("%s",NIF);
	
	printf("Birthday: ");
	scanf("%d %d %d",&d,&m,&y);	
	
	printf("sex: ");
	scanf("\n%c",&sex);
	
	printf("\nMy name is %s %s %s with NIF %s. I was born on %d/%d/%d and my sex is %c.",n,Fs,Ss,NIF,d,m,y,sex);
/*Por fabor, funciona de una vez*/
}
