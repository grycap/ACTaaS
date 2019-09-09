#include <stdio.h> 
#include <string.h> 

int main(){
	char linea[1024];
    FILE *fich;
	
	//Ejecuto el programa con la entrada de test
	system("exercise3.exe < Testentry3.txt > Testoutput3.txt");
		
 	//Recojo la última línea de la salida
    fich = fopen("Testoutput3.txt", "r");    
    while(fgets(linea, 1024, (FILE*) fich));
    fclose(fich);

	//Comparo la última línea del fichero de texto con la esperada			
	if (strcmp("The length of the circumference with radius 5.000000 is 31.416000",linea) == 0)
	{
		printf("\nTest succesfullly !");
		return 0;
	}else{
		printf("Your Output:     %s\n", linea);
		printf("Expected Output: The length of the circumference with radius 5 is 31.416000");
		
		printf("\nThe output of your program is not equal to the expected output.");            			
		return -1;
	}
	
}
