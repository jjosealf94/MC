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

* 

###Clase
En la clase se empezó a realizar el **HandsOn 1** el cual contenía manejo de Git, Bash y Pandoc. [HOn1](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-1.md)

+ _Git_ : Se exploró las facilidades que ofrece para regresar a versiones anteriores de nuestros proyectos. Usando `git log` se tiene un registro detallado de cada commit, el cual está identificado con un mensaje que colocamos y un **hash** el cual es un código que identifica de manera unívoca el commit. Tendiendo el hash podemos hacer `git checkout hash` para regresar a la versión que queramos, para volver se usa `git checkout master`. 

>HO1.1: se encontró que el segundo commit fue realizado el _5 de enero de 2013 a las 19:28:57_ y el tema de la  semana 15 fue _Interferencia Bayesiana_ 

+ _Bash_ : Se exploró el uso de **awk** y el de los **loops** en bash. En donde se aprendió a mejorar el uso de condicionales y variables de bash dentro de awk usando `awk -F "," -v var=$varbash '{if(var==condición){Acción a realizar}}' nombreArchivo`. Se aprendió a crear _csv_ y _tsv_ usando for, generación de una **matriz nxn** e imprimirla en pantalla. Finalmente se utilizó _curl_ y _sed_ para realizar una pequeña araña en la página del **El tiempo**. Los scripts los puede encontrar [aquí](https://github.com/jjosealf94/Scripts/tree/master/HandsOn1)

> Funcionamiento del scripts bashmatrix.sh

![alt text](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO1_matrix.png)

>Funcionamiento del script eltiempo.sh

![alt text](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO1_eltiempo.png)

+ _Pandoc_ : Pandoc es un programa capaz de convertir lenguaje de marcas en _casi_ cualquier otro formato, desarrollado por John MacFarlane profesor de filosofía de la Universidad de Berkeley. Es una librería de Haskell que permite la integración en el **código** de otros programas. Se puede usar así `pandoc -o output.ext -i input.md`, [aquí](http://en.wikipedia.org/wiki/Pandoc#Supported_File_Formats) una lista de los formatos soportados por pandoc.

##2-Jun-2015

###Clase
**Expresiones regulares:** Una expresión regular es un patrón que describe un conjunto de cadenas de caracteres. Las expresiones regulares permiten realizar busquedas y remplazos de gran complejidad. 

La construcción de expresiones regulares depende de la asignación de significado especial a algunos caracteres, los cuales son denominados **metacaracteres.**


|ER        | Significado                                 |
|:---------|:--------------------------------------------|
|.         | Cualquier caracter                          |
|[]        | Cualquier caracter dentro (admite listas)   |
|[^]       | Cualquier caracter que NO esté dentro       |
|^         | Principio de línea                          |
|$         | Fin de línea                                |
|*         | Cero o más ocurrencias de la ER anterior    |
|\         | Escapa un metacaracter                      |
|corchetes | Número dado de cualquier ER                 |
|+         | Una o más ocurrencia de la ER anterior      |
|?         | Cero o una ocurrecia de la ER anterior      |
|(pipe)    | Permite alternar entre dos ER               |
|()        | Las ER dentro quedan etiquetadas (Ej \1)    |
|[:space:] | Espacios en blanco( \t \r \v \n ...)        |


Se empezó a realizar el **HandsOn 2** el cual contenía manejo de Expresiones regulares y Gnuplot. [HOn2](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-2.md) /

* Expresiones regulares: 

>ER.1: Cuatro caracteres al inicio `^.{4}`

```
ER.2: Forteando el archivo de eventos del tiempo

sed -i -E 's/^ +//g' Timelineofmodernhistory.txt
sed -i -E 's/See also:.*//g' Timelineofmodernhistory.txt
sed -i -E '/^$/d' Timelineofmodernhistory.txt
sed -i -E 's/^....s//g' Timelineofmodernhistory.txt
sed -i -E '/^$/d' Timelineofmodernhistory.txt
sed -i -E 's/([0-9]): /\1:\t/g' Timelineofmodernhistory.txt

```
ER.3: Se descargó los primeros 10 millones dígitos y se redirigió a pi.txt `curl http://Pi.Karmona.com > pi.txt` 
```
#!/bin/bash
#: Description : This script gives to the file pi.txt the format 
sed -i -E 's/<BR>//g' pi.txt
sed -i -E 's/<\/center><\/BODY><\/HTML>//g' pi.txt
sed -i -E 's/<HTML><TITLE>Pi - 10 Million Digits \@ http:\/\/Pi\.Karmona\.com<\/TITLE><BODY>//g' pi.txt
sed -i -E 's/<CENTER><B>Pi - 10 Million Digits<\/B><B>//g' pi.txt
sed -i -E 's/<\/B>//g' pi.txt
sed -i -E 's/<B>//g' pi.txt
sed -E 's/(.{20})/\1\n/g' pi.txt > PIslices20.dat

```
ER.4: Finalmente utilizando grep se buscó si el teléfono aparecía entre los dígitos:
![alt text](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HOn2_TelefonoEnPi.png)

* Gnuplot:














