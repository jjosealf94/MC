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

La respectiva **solución** puede ser econtrada [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller1/SolucionTaller1.md), mientras que los ejecutables de la solución [aquí](https://github.com/jjosealf94/MC/tree/master/Talleres/Taller1).



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


**GnuPlot**: Es un programa especializado en generar gráficas, compatible con algunos sistemas operativos populares (Linux,MacOsx,Windows). Se distribuye bajo una licencia de software libre que permite la copia y modificación de su código fuente. Para más información [gnuplot homepage.](http://www.gnuplot.info/)
 
 _Inicio en Gnuplot_
 
 ```
 set term dumb
 plot [0:2*pi] sin(x)
 set term 'qt'
 plot [-10*pi:10*pi] sin(x)/x
 
 ```
 
 _Gráficas paramétricas_ 
 
 ```
 set term qt
 set parametric
 set size ratio 0.5 #Proporción
 plot [0:2*pi] sin(t),cos(t)
 
 ```
 _Gráfica usando un archivo externo_
 
```
set datafile separator ","
plot "filename.csv" using $1:$2

```

Se empezó a realizar el **HandsOn 2** el cual contenía manejo de Expresiones regulares y Gnuplot [HOn2.](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-2.md) Los script de solución del HandsOn 2 se pueden encontrar [aquí](https://github.com/jjosealf94/Scripts/tree/master/HandsOn2)

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
![alt text](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO2_TelefonoEnPi.png)

* Gnuplot: Para referencia sobre gnuplot entrar [aquí](http://www.cs.hmc.edu/~vrable/gnuplot/using-gnuplot.html)

> Este script muestra la tercera ley de kepler usando los satelites de jupiter

```
#!/usr/bin/gnuplot
# Description :  This script show Kepler's third law 
set term qt
set title "Kepler's third on Jupiter"
set xlabel "a**3"
set ylabel "T**2"
unset key
set datafile separator ","
plot "joviansatellites.csv" using (($2)**3):(($3)**2) with linesp
pause -1

```
> A continuación el script que realiza la gráfica de la Lemniscate of Bernoulli

```
#!/usr/bin/gnuplot
#: Description: This script show the lemniscate of bernoulli

set term dumb
unset ytics
unset xtics
unset key
set parametric
y(t)=(cos(t)*sin(t))/(((sin(t))**2)+1)
x(t)= cos(t)/(((sin(t))**2)+1)
plot x(t),y(t)

```

![alt text](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO2_lemniscate.png)

##3-Jun-2015

###Laboratorio
Se empezó a realizar el segundo taller de laboratorio, el cual contenía ejercicios sobre Bash, expresiones regulares y Gnuplot. El taller puede ser encontrado [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller2/Taller2.md), mientras que la respectiva **solución** detallada puede ser encontrada [aquí.](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller2/SolucionTaller2.md)

Los ejecutables pueden ser encontrados [aquí.](https://github.com/jjosealf94/MC/tree/master/Talleres/Taller2)

##Clase
Se continuó con el aprendizaje de Gnuplot, donde se aprendieron comandos útiles para personalizar una gráfica. 


_Varias gráficas en un mismo plot_ 


```
plot [-3:3] sin(x)/x, exp(-x**2/2) 

```

_Definiendo funciones_


```
f(x) = exp(-x**2/2)
plot [-10:10] f(x) 

```

_Agregando titulos, etiquetas, leyendas y cuadriculas_

```
set title "Gausiana"
set ylabel "Eje y"
set xlabel "Eje x"
set grid
plot f(x)

```

_Barras de error y "using"_ (numeros.csv en carpeta Taller1)


```
plot [0:100] "numeros.csv" using 1:2 with yerrosbars

```


_Ajustes de curvas_ 

Son necesarios para ajustar nuestros datos a una curva. Para el siguiente uso del ajuste se usó el archivo [cavendish.data](http://www.cs.hmc.edu/~vrable/gnuplot/cavendish.data)


```
 theta(t) = theta0 + a * exp(-t / tau) * sin(2 * pi * t / T + phi)
 a = 40
 tau = 15
 phi = -0.5
 T = 15
 theta0 = 10
 fit theta(x) "cavendish.data" using 1:2:3 via a, tau, phi, T, theta0
 plot "cavendish.data" title "Cavendish Experiment" with yerrorbars, theta(x) title "Best-Fit Curve"

```

![alt text](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/cavendishExperiment.png)

Para más información [referencia.](http://www.cs.hmc.edu/~vrable/gnuplot/using-gnuplot.html) 


En clase se realizaron ejemplos de como limpiar un html usando _w3m_ y además se mostró como usando _curl_ descargar información de la tasa de cambio del dolar a peso y se realizó con gnuplot la respectiva gráfica. El ejemplo es útil porque muestra como graficar cuándo se tienen series de tiempo y además de limpiar usando  sed un html, puede ser encontrado en la carpeta "examples" con el nombre dollar.sh. Finalmente se realiazó un ajuste de curva lineal sobre la Ley de hubble, el ejemplo puede ser encontrado en la carpeta "examples".


##5-Jun-2015

###Laboratorio

Durante la clase de laboratorio se trabajó en el tercer taller, el cuál contenía ejercicios sobre manejo de bash,gnuplot y c. El enunciado puede ser encontrado [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller3/Taller3.md), mientras que la respectiva solución [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller3/SolucionTaller3.md).

Los scripts correspondientes se pueden encontrar en la [carpeta](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller3)

###Clase

Durante la clase se retomó otra vez c donde se recordó la forma para realizar funciones y demás, se realizó un resumen de python. En el cual se habló de la _filosofía_ del lenguaje: 

* Readability counts.
* Beautiful is better than ugly
* Simple is better than complex
* Explicit is better than implicit
* Complex is better than complicated

Python es un lenguaje de programación interpretado, puede ser clasificado en un lenguaje **multiparadigma** ya que soporta orientación a objetos, programación imperativa y programación funcional. Es administrado por la Python Software Foundation, posee una licencia de código abierto, denominada Python Software Foundation License. En python los objetos son una abstracción de los datos, así todos los datos en python son representados como objetos. Un **objeto** se compone de una _identidad_ y un tipo de _valor._ La indentación es esensial ya que permite saber la diferencia en bloques de código.


|Operadores|Función            |  
|:---------|:------------------|
| +        | Suma              |
| -        | Resta             |
| *        | Producto          |
| /        | División          |
| %        | Residuo           |
| //       | División piso     |
| **       | Exponenciación    |
| abs(x)   | Valor absoluto    |
| float(x) | Conversión        |
| int(x)   | Conversión        |
| x[x]     | Indexando         |
| len(s)   | Tamaño            |
| str(x)   | Conversión        |

Para pedir información en python `x=raw_input("Please enter x=")`, sigue siendo útil al momento de pedir listas ya que se puede usar el método `split()` para particionar elementos separados por espacios en blanco. En python las expresiones lógicas siguen siendo `==`,`!=`,`<` y etc. 

_If and else_

```
if condition:
    thing_to_do1
    thing_to_do2
else:
    other_thing1
    other_thing2
```

_while_

```
while condition:
    thing_to_do1
    thing_to_do2

```

_for_

```#
for i in iterableObj(listas,strings,arrays):
     thing_to_do1
```

Luego se empezó a realizar el HandsOn 3, [HOn3](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-3.md), en donde se realizaron los ejercicios del libro The python workbook y pueden ser encontrados [aquí.](https://github.com/jjosealf94/MC/tree/master/python/exercises) El ejercicio de make quedo para el próximo Hands On. 











