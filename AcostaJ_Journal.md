#Métodos computacionales: Bitácora
##José Alfonso Acosta Peñaloza

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

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO1_matrix.png)

>Funcionamiento del script eltiempo.sh

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO1_eltiempo.png)

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

>HO2.1: Cuatro caracteres al inicio `^.{4}`

```
HO2.2: Formateando el archivo de eventos del tiempo

sed -i -E 's/^ +//g' Timelineofmodernhistory.txt
sed -i -E 's/See also:.*//g' Timelineofmodernhistory.txt
sed -i -E '/^$/d' Timelineofmodernhistory.txt
sed -i -E 's/^....s//g' Timelineofmodernhistory.txt
sed -i -E '/^$/d' Timelineofmodernhistory.txt
sed -i -E 's/([0-9]): /\1:\t/g' Timelineofmodernhistory.txt

```
HO2.3: Se descargó los primeros 10 millones dígitos y se redirigió a pi.txt `curl http://Pi.Karmona.com > pi.txt`
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
HO2.4: Finalmente utilizando grep se buscó si el teléfono aparecía entre los dígitos:

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO2_TelefonoEnPi.png)

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

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO2_lemniscate.png)

##3-Jun-2015

###Laboratorio
Se empezó a realizar el segundo taller de laboratorio, el cual contenía ejercicios sobre Bash, expresiones regulares y Gnuplot. El taller puede ser encontrado [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller2/Taller2.md), mientras que la respectiva **solución** detallada puede ser encontrada [aquí.](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller2/SolucionTaller2.md)

Los ejecutables pueden ser encontrados [aquí.](https://github.com/jjosealf94/MC/tree/master/Talleres/Taller2)

>Tercera ley de Kepler

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Taller2_kepler3.png)


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

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/cavendishExperiment.png)


Para más información: [referencia.](http://www.cs.hmc.edu/~vrable/gnuplot/using-gnuplot.html)


En clase se realizaron ejemplos de como limpiar un html usando _w3m_ y además se mostró como usando _curl_ descargar información de la tasa de cambio del dolar a peso y se realizó con gnuplot la respectiva gráfica. El ejemplo es útil porque muestra como graficar cuándo se tienen series de tiempo y además de limpiar usando  sed un html, puede ser encontrado en la carpeta "examples" con el nombre dollar.sh. Finalmente se realiazó un ajuste de curva lineal sobre la Ley de hubble, el ejemplo puede ser encontrado en la carpeta "examples".


##5-Jun-2015

###Laboratorio

Durante la clase de laboratorio se trabajó en el tercer taller, el cuál contenía ejercicios sobre manejo de bash,gnuplot y c. El enunciado puede ser encontrado [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller3/Taller3.md), mientras que la respectiva solución [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller3/SolucionTaller3.md).

Los scripts correspondientes se pueden encontrar en la [carpeta](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller3)

>Esfera aleatoria

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Taller3_Esfera.png)


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

```
for i in iterableObj(listas,strings,arrays):
     thing_to_do1
```

Luego se empezó a realizar el HandsOn 3, [HOn3](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-3.md), en donde se realizaron los ejercicios del libro **The python workbook.**

>HO3: Ejercicios del libro [aquí.](https://github.com/jjosealf94/MC/tree/master/python/exercises) El ejercicio de make quedo para el próximo Hands On.

##9-Jun-2015

##Clase
Se retomó el tema de make, ya que había quedado de la clase pasada. También se empezó el uso de los cuadernos de python. Para el funcionamiento correcto de los cuadernos fue necesario instalar Anaconda, porque arregló lo problemas que se tenía en cuanto a la falta de librerías y configuración. Además viene con la última versión `Jupiter`.

Durante la clase se mostró como ejemplo el problema de los tres cuerpos y cómo solucionarlo (de manera aproximada) en mathematica. A el ejemplo anterior se le sumó el uso de Matplotlib para generar animaciones del momviento de los tres cuerpos que condciones iniciales adecuadas produce la **Lemniscate of Bernoulli**.

Al terminar la parte teórica se empezó con el [HandsOn 4](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-4.md), el cuál contenía ejercicios sobre la modificación del `.bash_profile`, python, ipython y finalmente el ejercicio pendiente de make. Los  ejercicios del HandsOn4 pueden ser encontrados [aquí](https://github.com/jjosealf94/Scripts/tree/master/HandsOn4).

> HO4:Make

 Es un 'build manager' que sirve para automatizar proceso que necesitan prerrequisitos y tienen restricciones para ser ejecutados.
"A Makefile describes how files depend on each other, and how to update out-of-date files."
"Use patterns, rules, and variables to eliminate redundancy."
"Use macros to control operation."
La estructura básica de un archivo .mk es:
* target
* prerequisites
* Action

> HO4: Cambiando el bashrc

```

#!/bin/bash
#: Description : This script show you how to change the bash rc

#Ingresando al bashrc
cd
gedit .bashrc

#Imprimiendo el nombre
figlet Jose Acosta

#Agregando una dirección al path
PATH="/your/script/dir:${PATH}"
export PATH

```

#Proyecto Final

##10-Jun-2015

###Laboratorio
Se empezó con el primer experimento, el cual puede ser encontrado [aquí](https://github.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/blob/master/2015-V/actividades/experimentos/Exp1/Exp1.md). El objetivo del experimento era el estudio de un gas de discos suaves que interactúan de acuerdo al potencial de Lennard-Jones truncado. El informe de este experimento puede ser encontrado [aquí](https://github.com/jjosealf94/MC/blob/master/Experimentos/Exp1/Rayleigh.ipynb), mientras que los respectivos archivos en esta [carpeta.](https://github.com/jjosealf94/MC/blob/master/Experimentos/Exp1/)

>Resultado de la simulación del experimento

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Exp1_DistribucionVelocidades.png)

##Clase
Durante la clase se estudió más sobre matplolib y su capacidad de generar animaciones. Vimos varios ejemplos útiles en los cuales una animación podía ayudar a entender algún fenómeno.

**Introducción a Matplotlib**
Es una librería diseñada para generar gráficas de arreglos en 2D en Python. La _filosofía_ que rige esta librería es que la generación de gráficas debe ser algo fácil y que se pueda realizar en la menor cantidad de comandos. Inspirada en un principio en **MATLAB**, matplotlib es un proyecto independiente.

Matplotlib puede ser divida en tres partes:

* Pylab interface: Permite generar gráficas con comandos similares a los de MATLAB.
* API o frontend: Administra las gráficas, texto, líneas y demás.
* Backends: Son procesadores que transforman los 'frontend' para ser visualizados.

Ejemplos

_Comandos útiles_

```
figure()
plot()
scatter()
title()
xlabel()
ylabel()
savefig()
subplot()
xlim()
ylim()
show()
legend()
imread()
autoscale()
hist()
```
Para más información de Matplotlib. [referencia.](http://matplotlib.org/1.4.3/api/pyplot_summary.html)
Luego se empezó a realizar el HandsOn 5, el cuál contenía ejercicios para manejo de Matplotlib. [HOn5](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-5.md)

Se desarrolló durante el HandsOn 5 los ejemplos del manual de Matplotlib, se aprendió la locación de texto, legendas y personalización gráficas. Además la manera de cómo hacer histogramas, modificar los ejes, la escala y demás. Luego se retoma el ejercicio del circulo y hacer una animación cambiando el radio, así se aprendió la estructura básica de una animación en python. Finalmente el ejercicio sobre figuras de **Lissajous** fue útil debido a que se repasan comandos  como subplot(), figure(), axis() y se utiliza el comando **randint()** para generar enteros aleatorios.

```
%pylab inline
from random import randint

t = linspace(0,2*np.pi,200)
figure(figsize=(12,7))

for i in range(0,25):  
    x = (sin(randint(1,7)*t) + (pi/randint(2,4)))
    y = sin(randint(5,8)*t)
    subplot(5,5,i+1)
    plot(x,y)
    axis('off')

savefig("lissajous.png", format='png',bbox_inches='tight',transparent=False)
```

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO5_lissajous.png)

##12-Jun-2015

###Laboratorio
Durante el laboratorio se trabajó en el experimento 1, se logró realizar lo histogramas de velocidades y se adelantó la parte teórica del experimento.  El informe de este experimento puede ser encontrado [aquí](https://github.com/jjosealf94/MC/blob/master/Experimentos/Exp1/Rayleigh.ipynb)

###Clase
Durante la clase se trabajó en el HandsOn 6, [HOn6](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-6.md), en el cual se volvió a tratar el tema de la animaciones y el problema de los tres cuerpos. No se logró renderizar la animación ya que se necesita tener **ffmpeg** para guardarla, así que se realizó la instalación más sin embargo no se logró ubicarla/configurarla de manera correcta.

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO6_AniPlanetas.png)

Luego se realizó la lectura del segundo capítulo del libro de Landau y se intentó realizar algunos de los ejemplos que se reproducen ahí. A continuación se muestra un pequeño resumen sobre **errores e incertidumbres en cálculos numéricos.**

Cuando se realizan cálculos computacionales es inevitable tener en cuenta que se pueden presentar errores que provocan tener incertidumbres en los datos que se trabajan. Los errores más comumes se pueden clasificar en los siguientes: 

* Blunders or bad theory: Mala lectura de los datos, mal implementación de la teoría.
* Random errors: Eventos fuera de nuestro control.
* Approximation errors: Aproximación de conceptos matemáticos.
* Round-off errors: Limitación de la capacidad de un computador para almacenar y procesar cifras.

Finalmente las notas del libro de Landau pueden ser encontradas [aquí](https://github.com/jjosealf94/MC/blob/master/Notes/LandauNotes.ipynb)

##16-Jun-2015

###Clase
Durante la clase se empezó con el tema de interpolación en python. Se vieron varias formas de interpolación y métodos para implementar ésto. La referencia utilizada fue el capítulo 2 del libro de Scherer y el capítulo 8 del survey de Landau.

**Polinomios de Lagrange**

Llamado así en honor a Joseph-Louis de Lagrange, es una forma de presentar el polinomio que interpola un conjunto de puntos dado. Dado un conjunto de _k+1_ puntos _(x0,y0)...(xk,yk)_ donde todos los _xj_ se asumen distintos, el polinomio interpolador en la forma de Lagrange es la combinación lineal.

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Clase_Lagrange.png)

De bases polinómicas de Lagrange:

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Clase_BaseLagrange.png)

Si se aumenta el número de puntos a interpolar (o nodos) con la intención de mejorar la aproximación a una función, también lo hace el grado del polinomio interpolador así obtenido, por norma general. 

> Implementación en python

```
# Base de lagrange
def lagrangep(absc,j):
    pol=np.poly1d([0,1])
    k=len(absc)
    for m in range(k):
        if m!=j:
            pol*=1./(absc[j]-absc[m])*np.poly1d([1.,-absc[m]])
    return pol   

# Lagrange
def interlagr(absc,orde):
    poly=np.poly1d([0])
    for i in range(len(absc)):
        poly+=orde[i]*lagrangep(absc,i)
    return poly

```

**Polinomio de Newton**

Es un método de interpolación polinómica. Aunque sólo existe un único polinomio que interpola una serie de puntos, existen diferentes formas de calcularlo. Dados _(n+1)_ escalares distintos _(z0,z1,...,zn)_ y _(n+1)_ escalares (iguales ó distintos) _(w0,w1,...,wn)_ se define el polinomio interpolador en la forma:

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Clase_Newton.png)

Siendo _(c0,...,cN)_ las coordenadas del polinomio y la expresión anterior del polinomio interpolador la conocida como diferencias divididas.Teniendo en cuenta que existe una función _p_ tal que _p(zi)=wi_ y haciendo sucesivamente: _z = zi, i=(0,...,n)_

> Implementación en python

```
# Newton basis
def newtonbasis(absc,i):
    poly=np.poly1d([0,1])
    if i!=0:
        for k in range(len(absc)-1):
            poly*=np.poly1d([1,-absc[k]])
    return poly
 
# Divided differences
def div_dif(y,x):
    j=len(x)
    if j==1:
        return y[0]
    else:
        return (div_dif(y[1:],x[1:])-div_dif(y[:-1],x[:-1]))/(x[-1]-x[0])

# Newton expasion       
def newtexp(absc0,ords0):
    absc=[float(i) for i in absc0]
    ords=[float(i) for i in ords0]
    pol=np.poly1d([0])
    for i in range(len(absc)):
        pol+=div_dif(ords[:i+1],absc[:i+1])*(newtonbasis(absc,i))
    return pol

```


**Splines 1-D**

La clase interp1d en scipy.interpolate es un método conveniente para crear una función basada en puntos fijos de datos que pueden ser evaluados en cualquier lugar dentro del dominio definido por los datos dados utilizando interpolación lineal.

```
from scipy import interpolate
sale=[] #Datos
interpol_lin = interpolate.interp1d(datosx,datosy,kind='linear')
interpol_nearest = interpolate.interp1d(datosx,datosy,kind='nearest')
interpol_zero = interpolate.interp1d(datosx,datosy,kind='zero')
interpol_slinear = interpolate.interp1d(datosx,datosy,kind='slinear')
interpol_quadratic = interpolate.interp1d(datosx,datosy,kind='quadratic')
interpol_cubic = interpolate.interp1d(datosx,datosy,kind='cubic')

```

**Ajustes no lineales y lineales por mínimos cuadrados**

_Mínimos cuadrados:_ Ajusta a un polinimio p(x) = p[0] * x**deg + ... + p[deg] de grado deg los datos (x, y). Retorna un vector con los coeficientes de p(x) que minimizan el cuadrado del error.

```
from numpy import polyfit # Para hacer ajustes polinomiales por mínimos cuadrados

# Regresión lineal
thefit=np.polyfit(distances,speeds,1)
slope=thefit[0]
intercept=thefit[1]

```

_Ajuste no lineal_: Usa un ajuste no linear por mínimos cuadrados sobre una función y unos datos.

```
from scipy.optimize import curve_fit # Para hacer ajustes no lineales

# Ejemplo de regresión no polinomial

def func(x,p1,p2,p3):
    return function

nonlfit=curve_fit(func, datosx, datosy,p0=(0,0,0))

```
Acontinuación se empezó a realizar el [HandsOn 7](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-7.md), el cual contenía ejercicios sobre interpolación.

>HO7: Polyunknown

Se encontró que el grado del polinomio desconocido es 13, para ver la solución del ejercicio ver [aquí](https://github.com/jjosealf94/Scripts/blob/master/HandsOn7/polyunkown.ipynb)

**Resultado**

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO7_lagrange.png)

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO7_polyfit.png)

>HO7: Estimación de la masa de jupiter con 4 lunas

Se realizó la estimación de la masa de jupiter mediante la interpolación de datos con un polinomio de grado 3. Ver solución [aquí](https://github.com/jjosealf94/Scripts/blob/master/HandsOn7/MasaJupiter.ipynb)

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO7_Jupiter.png)

>HO7: Campo magnético de un dipolo

Se realizó una interpolación de los datos datos en la tabla de acuerdo a un modelo que dónde de cae el campo magnético de acuerdo al cubo de la distancia.

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO7_Dipolo.png)

La tabla para **B(x)** con 100 renglones uniformemente espaciada entre el x=2.3cm y x=4.3cm se encuentra en el siguiente [cuaderno.](https://github.com/jjosealf94/Scripts/blob/master/HandsOn7/momentoMagnetico.ipynb)

#Proyecto Final

##17-Jun-2015
###Laboratorio
Durante la clase de laboratorio se trabajó en el cuarto taller, el cuál contenía ejercicios sobre diferentes clases de interpolación. El enunciado puede ser encontrado [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller4/Taller4.md), mientras que la respectiva solución [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller4/Taller4.ipynb).

Los scripts correspondientes se pueden encontrar en la [carpeta.](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller4)

>Nueva tabla con muestreo uniforme usando un cubic spline.

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Taller4_Interpol.png)

###Clase

Se finalizó con el tema de interpolación, se empezó con **Fourier** y antes de acabar se vieron nuevas funciones de **Git**.

_**Análisis Fourier**_
El análisis de Fourier es una herramienta que permite el estudio de funciones en términos de una base de senos y cosenos. Investiga y generaliza las nociones de series de Fourier y transformadas de Fourier. Se ha convertido en un tema con aplicaciones en campos diversos como el procesamiento de señales, la mecánica cuántica o la neurociencia.

**Series de Fourier**
Dado una función periódica que satisface las condiciones de Dirichlet, se tiene que:

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Clase_serieFourier.png)

>Implementación en python

```
fig=plt.figure(figsize=(10,5))
x=np.linspace(0,2*np.pi,100)
y=0.*x
plt.plot([0,0,np.pi,np.pi,2*np.pi,2*np.pi],[0,1,1,-1,-1,0],"k",lw=3)
for i in range(5):
    y+=4./np.pi*1./(2*i+1)*np.sin((2*i+1)*x)
    plt.plot(x,y,label=str(i))
plt.xlim(0,2*np.pi)
plt.legend()
plt.title("Square Wave Fourier Series")
plt.show()

```

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Clase_fourierOndaCuadrada.png)


**Más sobre Git**

```
#Ver ramas
git branch
#Iniciar una nueva rama
git branch rama1
#Cambiar a otra rama
git checkout rama1
#Merge
git merge rama1
#Etiquetas
git tag -a

```
Luego de la clase se empezó a trabajar en el [HandsOn 8](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-8.md), el cuál contenía ejercicios sobre interpolación, series de fourier y manejo de Git. Ver solución [aquí](https://github.com/jjosealf94/Scripts/blob/master/HandsOn8/HandsOn8.ipynb), el punto de Fourier fue aplazado para el HandsOn 9.

>HO8: Primer punto de Lagrange Jupiter-Io

Se encontró que usando la funcíón intergrada de python `root` el primer punto de lagrange es: 10467.58. Luego usando la aproximación de M1>>M2 se encontró que el punto de lagrage es:15224.97.

La diferencia porcentual entre uno y otro es de aproximadamente un **45%.**


##19-Jun-2015

###Laboratorio
Durante la clase de laboratorio se trabajó en el quinto taller, el cuál contenía ejercicios sobre series de Fourier y el fenómeno de Gibbs. El enunciado puede ser encontrado [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller5/Taller5.md), mientras que la respectiva solución [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller5/PruebaS5.ipynb).

Los scripts correspondientes se pueden encontrar en la [carpeta.](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller5)

>Fenómeno de Gibbs

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Taller5_CteGibbs.png)


###Clase

**Transformada Discreta de Fourier**
Cuándo la función y su transformada de Fourier son remplazadas por una discretización de éstas, se conoce como transformada de fourier discreta (TFD). La TFD se ha vuelto popular en computación númerica ya que su algoritmo es rápido de computar, conocida también como _rápida transformada de fourier_, se tiene detalles de el algoritmo desde Gauss (1805) y traída a la luz en su forma actual por Cooley y Turkey.

* Puntos uniformemente espaciados (Si no, hacer interpolación)
* Número de puntos potencia de 2


>Implementación en python

```
ffty=fft(y)
freq = fftfreq(N, dt) # frecuencias
absffty=np.abs(ffty)
plt.figure(figsize=(10,5))
for i in range(len(absffty)):
    plt.plot([freq[i],freq[i]],[0,absffty[i]],"-")
plt.plot(freq,absffty,"o")
plt.xlabel("f/Hz")
plt.xlim(-500,500)
plt.title("DFT")
plt.show()

```
Para más información ver [aquí.](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/slides/2015-V/07-Fourier.ipynb)

A continuación se empezó con el [HandsOn 9](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-9.md), el cuál contenía ejercicios sobre **Fourier y aplicaciones de Filtros** para imágenes.

>HO9: Función triangular

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO9_Triangular.png)

Ver solución [aquí.](https://github.com/jjosealf94/Scripts/blob/master/HandsOn9/FuncionTriangular.ipynb)

>HO9: DFT y Procesamiento de Imágenes

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO9_lena.png)

Ver solución [aquí](https://github.com/jjosealf94/Scripts/blob/master/HandsOn9/Imagenes.ipynb)

##23-Jun-2015
###Clase
Se empezó el estudio de las derivadas y se implementó en python. Los métodos usados fueron los de **Forward, Backward and Central differences.** Se encontró que con los métodos anteriores se tiene diferentes grados de aproximación con la derivada por lo tanto se tiene un error asociado al cálculo de la derivada.

**Errores de las derivadas**
![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Clase_derivadas.png)

> Implementación python

```
h = (b-a)/(numPoints-1)
yforward = np.roll(y,-1)
ybackward = np.roll(y,1)

# Calcular las derivadas usando forward differences
dy1 = (yforward-y)/h
dy1 = dy1[:-1] # la última no tiene significado

# ahora usando diferencias pasadas,
dy2=(y-ybackward)/h
dy2=dy2[1:] # la primera no tiene significado

# Finalmente usando diferencias centrales.
dy3 = (yforward-ybackward)/(2.*h)
dy3=dy3[1:-1] #Ni la primera ni la última tiene significado

```

Luego se vieron ejemplos de **extrapolación** los cuales se usaron para estimar el valor de la derivada cuándo h tiende a cero.

```
from scipy import interpolate as interscipy

def D(x,h):
    return (examplefun(x+h)-examplefun(x-h))/(2.*h)

Dtable=[]
h=0.01/2.
xchoice=np.pi/4.

for i in range(5):
    Dtable.append([h,D(xchoice,h)])
    h=h/2.

aDtable=np.array(Dtable)
rows=aDtable[0:2]
lag1=interscipy.lagrange(rows[:,0]**2,rows[:,1]) #Lagrange orden 1 en h^2

```
Finalmente en la clase se estudió una introducción al cálculo en python con variables simbólicas.

```
from sympy import *
x,y,z = symbols('x y z')
init_printing(use_unicode=True)
```

Al finalizar la clase se empezó a trabajar en el [HandsOn 10](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-10.md), el cuál contenía ejercicios de manejo de transformada de fourier discreta. La solución puede ser encontrada [aquí.](https://github.com/jjosealf94/Scripts/blob/master/HandsOn10/Fourier.ipynb)

> HO10: Duración del ciclo solar analizando con una DFT

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/HO10_CicloSolar.png)

##24-Jun-2015
###Laboratorio
Durante la clase de laboratorio se trabajó en el sexto taller, el cuál contenía ejercicios sobre manejo de datos, smopy, integración y derivadas. El enunciado puede ser encontrado [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller6/Taller6.md), mientras que la respectiva solución [aquí](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller6/GPS.ipynb).

Los scripts correspondientes se pueden encontrar en la [carpeta.](https://github.com/jjosealf94/MC/blob/master/Talleres/Taller6)

>Recorrido por el parque

![imagen](https://raw.githubusercontent.com/jjosealf94/Imagenes/master/Taller6_GPS.png)

###Clase
Durante la clase se empezó a trabajar en la **integración** en python, se estudiaron tres métodos conocidos como **aproximación trapezoidal, regla de simpson y cuadratura de Gauss.**

En el caso de aproximación trapezoidal se aproxima mediante un polinomio de primer grado, así sabiendo calcular el área de un trapezoide podemos estimar la integral.

`Area= (b-a)/2*(f(a)+f(b))`

El método utilizado para la regla de Simpson sigue la misma idea, pero aproximando los subintervalos de f mediante polinomios de segundo grado.

Una cuadratura de Gauss n, es una cuadratura que selecciona los puntos de la evaluación de manera óptima y no en una forma igualmente espaciada, construida para dar el resultado de un polinomio de grado 2n-1 o menos, elegibles para los puntos xi y los coeficientes wi para i=1,...,n. El dominio de tal cuadratura por regla es de [−1, 1]. [Información](https://es.wikipedia.org/wiki/Cuadratura_de_Gauss)

A continuación se continuó con el desarrollo del [HandsOn 11](https://github.com/ComputoCienciasUniandes/MetodosComputacionales/blob/master/hands_on/HandsOn-11.md), el cuál contenía ejercicios sobre **la regla simpson 3/8.** La solución puede ser encontrada [aquí.](https://github.com/jjosealf94/Scripts/blob/master/HandsOn11/ReglaDeSimpson.ipynb)
































