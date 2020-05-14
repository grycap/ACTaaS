#include <stdio.h>

int main(){
	
	FILE *Fr;
	FILE *Fw;
	
	int data;
	
	Fr = fopen("input.txt","r");
	fscanf(Fr,"%d", &data);	
	fclose(Fr);
	
	
	
	Fw = fopen("output.txt","w");
	fprintf(Fw,"%d",data*data);
	fclose(Fw);
	
    return 0;
}
