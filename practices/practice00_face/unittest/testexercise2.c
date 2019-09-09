#include <stdlib.h> 
#include <stdio.h> 
#include <string.h> 

int main(){
	char linea[1024];
    FILE *fich;
	
	//Ejecuto el programa con la entrada de test
	system("exercise2.exe > Testoutput2.txt");
		
 	//Recojo la última línea de la salida
    fich = fopen("Testoutput2.txt", "r");    
    while(fgets(linea, 1024, (FILE*) fich));
    fclose(fich);
	
	//Comparo la última línea del fichero de texto con la esperada			
	if (strcmp("The result is 1",linea) == 0)
	{
		printf("Test succesfullly !");
		return 0;
	}else{
		printf("Your Output:     %s\n", linea);
		printf("Expected Output: The result is 1");
		
		printf("\nThe output of your program is not equal to the expected output.");            			
		return -1;
	}
	
}
