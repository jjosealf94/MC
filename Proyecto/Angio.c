#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(void)
{
	//Número de filas de matriz de pixeles
	int filas;
	//Número de columnas de matriz de pixeles
	int columnas;
	//Número de clusters
	int numClusters;
	//Apuntador al archivo del cual se leen los datos
	FILE *fPtr;
	//Posible excepción 
	if((fPtr=fopen("Angio.txt","r"))==NULL)
		puts("El archivo no se pudo abrir");
	else
	{
		int i,j,k;		
		//Escanear filas y columnas de matriz de pixeles y número de clusters
		fscanf(fPtr,"%d%d%d",&filas,&columnas,&numClusters);
		//Crear matriz de pixeles
		int matriz[filas][columnas];
		//Crear vector de clusters
		double vectorClusters[numClusters];
		//Crear la matriz de transición que determinará a qué cluster corresponde cada uno de los puntos
		int matrizTransicion[filas][columnas];

		//Escanear los valores iniciales de los clusters
		for(i=0;i<numClusters;i++)
		{
			fscanf(fPtr,"%lf",&vectorClusters[i]);
		}

		//Escanear los valores de la matriz de pixeles
		for(i=0;i<filas;i++)
		{
			for(j=0;j<columnas;j++)
			{
				fscanf(fPtr,"%d",&matriz[i][j]);
			}
		}

		//Asignar cada punto a un cluster de manera que se reduzca la varianza
		for(i=0;i<filas;i++)
		{
			for(j=0;j<columnas;j++)
			{
				double min=pow(matriz[i][j]-vectorClusters[0],2);
				double pos=0;
				for(k=1;k<numClusters;k++)
				{
					if(min>pow(matriz[i][j]-vectorClusters[j],2))
					{
						min=pow(matriz[i][j]-vectorClusters[j],2);
						pos=k;
					}
				}
				matrizTransicion[i][j]=pos;
			}
		}

		//Definir el porcentaje de pixeles que se cambian por la iteración respecto al total
		double porcentajeCambio=1;

		//Realizar la iteracion hasta que el porcentaje de cambio sea inferior al 1%
		while(porcentajeCambio>0.01)
		{

			//Recalcular cada uno de los clusters como la media de los puntos que lo componen
			for(k=0;k<numClusters;k++)
			{
				double sumatoria=0;
				int n=0;
				for(i=0;i<filas;i++)
				{
					for(j=0;j<columnas;j++)
					{
						if(matrizTransicion[i][j]==k)
						{
							sumatoria+=matriz[i][j];
							n++;
						}
					}
				}
				if(n!=0)
					vectorClusters[k]=sumatoria/n;
			}

			//Número de cambio de cluster para cada pixel realizados
			int cambios=0;

			//De reducirse la varianza, asignar cada punto al cluster respectivo. Registrar el número de cambios de cluster para todos los puntos realizados
			for(i=0;i<filas;i++)
			{
				for(j=0;j<columnas;j++)
				{
					double clusterOriginal=matrizTransicion[i][j];
					double pos=clusterOriginal;
					double min=pow(matriz[i][j]-vectorClusters[0],2);
					for(k=0;k<numClusters;k++)
					{
						if(min>pow(matriz[i][j]-vectorClusters[k],2))
						{
							min=pow(matriz[i][j]-vectorClusters[k],2);
							pos=k;
						}
					}
					if(clusterOriginal!=pos)
					{
						matrizTransicion[i][j]=pos;
						cambios++;
					}
				}
			}
			porcentajeCambio=cambios/(filas*columnas);
		}
		//Escribe el archivo de salida con nombre AngioR.txt con la información de la segmentación
		FILE *ePtr;
		if((ePtr=fopen("AngioR.txt","w"))==NULL)
			puts("No se pudo crear el archivo de salida");
		else
		{
			for(i=0;i<filas;i++)
			{
				for(j=0;j<columnas;j++)
				{
					fprintf(ePtr,"%d ",matrizTransicion[i][j]);
				}
			}
		}

	}
}
