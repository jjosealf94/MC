#Primera semana

##27-May-2015
###Clase
Hola Mundo!, aqui estoy comenzando el curso de **metodos computacionales**.

_Herramientas del curso_:
 
+ Git,
+ GitHub,
+ C,
+ Python,

y los metodos a estudiar son:

1. Interpolacion,
2. Analisis de Fourier,
3. diferenciacion e integracion numerica,
4. ecuaciones diferenciales ordinarias,
5. ecuaciones diferenciales parciales,
6. y metodos de monte carlo.

Aproximación al manejo de la **consola** en LINUX. Algunos comandos usados fueron


|Comando       |             Función               |
|:-------------|:----------------------------------|
|ls            | listar las directorios y archivos |
|cd            | Cambiar directorio                |
|sed           | Edición de archivos               |
|awk           | Manipulación de archivos          |
|rm            | Elimina archivos                  |         
|mkdir         | Crea directorios                  |
|rmdir         | Elimina directorios               |
|curl          | Descargar el codigo fuente        |
|wget          | Descargar archivos                |


Instrucciones para **subir a Github** un markdown

0. git pull
1. git add Nombre.md
2. git status
3. git commit 
4. git push origin master

Conectarse a un **computador remoto**

```
ssh usuario@computador
```


##29-May-2015 

###Laboratorio
Se realizó el primer taller de laboratorio, para lo cual se tenía que haber leído las lecturas recomendadas. El taller trató sobre Markdown, Bash y Git. El taller puede ser encontrado [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller1/Taller1.md)

La respectiva solución puede ser econtrada [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller1/SolucionTaller1.md), mientras que los ejecutables de la solución [aquí](https://github.com/jjosealf94/MC/tree/master/Talleres/Taller1).

###Clase
En la clase se empezó a realizar el **HandsOn 1** el cual contenía manejo de Git, Bash y Pandoc. [HOn1](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-1.md)

+ _Git_ : Se exploró las facilidades que ofrece para regresar a versiones anteriores de nuestros proyectos. Usando `git log` se tiene un registro detallado de cada commit, el cual está identificado con un mensaje que colocamos y un **hash** el cual es un código que identifica de manera unívoca el commit. Tendiendo el hash podemos hacer `git checkout hash` para regresar a la versión que queramos, para volver se usa `git checkout master`. 

>HO1.1: se encontró que el segundo commit fue realizado el _5 de enero de 2013 a las 19:28:57_ y el tema de la  semana 15 fue _Interferencia Bayesiana_ 

+ _Bash_ : Se exploró el uso de **awk** y el de los **loops** en bash. En donde se aprendió a mejorar el uso de condicionales y variables de bash dentro de awk usando `awk -F "," -v var=$varbash '{if(var==condición){Acción a realizar}}' nombreArchivo`. Creación de _csv_ y _tsv_ usando for, generación de una **matriz nxn** e imprimirla en pantalla. Finalmente se utilizó _curl_ y _sed_ para realizar una pequeña araña en la página del **El tiempo**

> Funcionamiento del scripts bashmatrix.sh


![alt text](/home/jose/Documentos/Imagenes/HO1_matrix.png)

##2-Jun-2015

###Clase
 Hands-on 2

### Expresiones regulares
1. Construcción de una expresión regular de 4 cualesquiera caracteres: 
``` 
#!/bin/bash 
#: Desciption : Agrega una expresion regular de cuatro cualesquiera caracteres 

^.{4}

```














