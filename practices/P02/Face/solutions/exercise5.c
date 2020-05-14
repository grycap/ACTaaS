#include <stdio.h>

int main(){

	FILE *F, *G;
	char item[80];
	
	F = fopen("items.txt","r");
	G = fopen("items2.txt","w");
	
	fgets(item,80,F);
	fprintf(G,"1.- %s", item);
	
	fgets(item,80,F);
	fprintf(G,"2.- %s", item);
	
	fgets(item,80,F);
	fprintf(G,"3.- %s", item);
	
	fclose(F);
	fclose(G);
	
    return 0;
}
