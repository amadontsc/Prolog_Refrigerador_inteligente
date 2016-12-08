

- Introducción

- Problemática

- Justificación

- Desarrollo

- Resultados

- Conclusión

- Referencia


----------

# Introducción. #

**¿Qué es la programación lógica?**

La programación lógica es aquel tipo de programación que permite al software “razonar”, esto es, hacer razonamientos, por ejemplo, de tipo deductivo o inductivo. Dada una base de datos consistente en un conjunto de entidades, propiedades de esas entidades y relaciones de unas entidades con otras, el sistema es capaz de hacer razonamientos. Básicamente, este proceso se expresa de la siguiente forma:


**Resultados = reglas + hechos.**

Donde entendemos que “hechos” es el conjunto de datos que conoce el sistema a priori(o que va adquiriendo a lo largo de su ejecución) y “reglas” son un conjunto de operaciones que se pueden aplicar a dichos datos para sacar un resultado lógico.

Algunos campos donde este tipo de lenguajes es aplicado son en la implementación de Sistemas Expertos (programas que generan una respuesta o una recomendación sobre el tema para el que están implementados) o para la Generación de nuevos teoremas (dadas una serie de reglas, generan teoremas).

**¿Para qué nos sirve la programación lógica?**

La programación lógica nos sirve para comprender como trabaja una mente sin conocimientos, es algo bastante complejo de trabajar ya que hablamos de un tema prácticamente ligado a la inteligencia artificial, es decir, nosotros declaramos los conocimientos y el razonamiento a una máquina y esta los aplicara exactamente como se le enseño. En esta ocasión se utilizó SWI-Prolog para el desarrollo de esta aplicación.


----------

# Problematica. #

La problemática surge a la hora de despertar o llegar a casa después de un largo día y lo único que pensamos en esos momentos es en la comida. Siempre revisamos nuestro refrigerador con la esperanza de encontrar el alimento que queremos, aquí es cuando surge esta idea la cual es: pasarle un poco de información al refrigerador y este nos proporcionara su contenido y ¿porque no?, posibles recetas que se puedan realizar con dicho contenido.

<p align="center">![](http://oi63.tinypic.com/11azfpj.jpg)

----------

# Justificación. #

El motivo por el que propongo esta idea es porque muchas veces no administro bien mi tiempo para ingerir mis alimentos y termino perdiendo tiempo buscando que puedo cocinar en un tiempo determinado, además, esta idea puede aplicarse para realizar las compras con mayor control sin desperdiciar los alimentos pues sabremos en cualquier momento que tenemos y que nos falta en nuestro refrigerador y quizá en otro momento en una despensa.


----------

# Desarrollo. #

**Hechos**

Lo ingredientes fueron los primeros en ser declarados ya que practicamente toda la aplicacion funciona a partir de los mismos, en este caso me base en lo que regularmente estaba disponible en casa y algunos ingredientes de una de las comidas rapidas mas populares en el mundo.

    %ingredientes disponibles
    es_Ingrediente(jamon).
    es_Ingrediente(queso).
    es_Ingrediente(mayonesa).
    es_Ingrediente(tomate).
    es_Ingrediente(cebolla).
    es_Ingrediente(lechuga).
    es_Ingrediente(mostaza).
    es_Ingrediente(pan_barra).
 

Tambien declare algunas caracteristicas de los platillos que se pueden hacer con estos ingredientes con el fin de darle un poco mas de versatilidad a la informacion que se puede obtener de la aplicacion.

    %Dificultad del platillo
    dificultad(sandwich,sencillo).
    
    %Tiempo aproximado de preparacion de platillo(en minutos)
    tiempo_de_preparacion_min(sandwich,12).

    %ingredientes de platillos en lista
    ingredientes_platillo(sandwich,jamon).
    ingredientes_platillo(sandwich,queso).
    ingredientes_platillo(sandwich,pan_barra).
    ingredientes_platillo(sandwich,mayonesa).
    ingredientes_platillo(sandwich,mostaza).
    ingredientes_platillo(sandwich,lechuga).
    ingredientes_platillo(sandwich,tomate).
    ingredientes_platillo(sandwich,cebolla).

**Reglas**

Las reglas presentadas a continuación fueron pensadas con el fin de interactuar con los platillos que se pueden realizar, desde simplemente verificar que tengamos los ingredientes para su elaboración hasta filtros para ver si es un platillo rápido o complicado de realizar.

    %platillos
    platillo(sandwich):- es_Ingrediente(pan_barra),es_Ingrediente(jamon),es_Ingrediente(mostaza),
    	es_Ingrediente(mayonesa),es_Ingrediente(tomate),es_Ingrediente(cebolla),es_Ingrediente(lechuga),
    	es_Ingrediente(queso).

    platillo_sencillo(X):- dificultad(X,Y), Y=sencillo.
    platillo_sencillo(X):- dificultad(X,Y), Y=muy_sencillo.
    
    platillo_complicado(X):- dificultado(X,Y), Y=poco_complicado.
    platillo_complicado(X):- dificultado(X,Y), Y=complicado.
    
    platillo_rapido(X):- tiempo_de_preparacion_min(X,Y), Y<15.
    
    platillo_grande(X):- tiempo_de_preparacion_min(X,Y), Y>=15.
    

----------

# Resultados. #

A continuación se muestran algunas formas de aplicar las reglas de esta aplicación con el fin de demostrar su funcionalidad y posible utilidad en un futuro no muy lejano.

    1 ?- platillo(sandwich).
    true.
    
    2 ?- platillo(sopa_de_fideos).
    false.

Como podemos observar, la respuesta de nuestra aplicación es positiva cuando es posible elaborar un platillo y negativa en caso contrario. Podemos conocer los platillos disponibles mandando como parámetro una X como se muestra a continuación:

    3 ?- platillo(X).
    X = sandwich ;
    X = quesadilla ;
    X = ensalada_de_atun ;
    X = cereal ;
    X = pizza.

Como podemos ver, solo contamos con cinco platillos. Conociendo esto podemos filtrar los platillos dependiendo de nuestra conveniencia, por ejemplo si queremos un platillo sencillo de realizar aplicamos la siguiente pregunta:
    
    4 ?- platillo_sencillo(X).
    X = sandwich ;
    X = quesadilla ;
    X = ensalada_de_atun ;
    X = cereal ;

Aplicamos el parámetro X para que nos muestre todos los platillos sencillos de elaborar, otra opción es pedir los platillos más complicados:

    5 ?- platillo_complicado(X).
    X = pizza ;

Nos restan dos reglas, una funciona para conocer los platillos que se pueden elaborar rápidamente, en este caso en menos de quince minutos:

    6 ?- platillo_rapido(X).
    X = sandwich ;
    X = quesadilla ;
    X = cereal ;

Ahora, con la última regla podemos conocer el caso contrario, es decir, los platillos que se pueden elaborar en quince minutos o más:

    7 ?- platillo_grande(X).
    X = ensalada_atun ;
    X = pizza.


----------

# Conclusión. #

Siendo un novato en prolog puedo decir que este lenguaje te obliga a cambiar tu manera de pensar a la hora de programar, en mi caso particular me enseño a utilizar un poco mejor las banderas en otros lenguajes, es decir, un evento puede ser manipulado de diferente manera dependiendo de la respuesta del sistema en base a sus conocimientos. Puedo decir que esta práctica fue un éxito a pesar de los problemas iniciales a la hora de plantear el problema. Espero y este ejemplo les sirva a otras personas para introducirse en este lenguaje. 

**Este contenido queda libre para su uso en fines educativos.** 


----------

# Referencias. #

https://www.youtube.com/channel/UC63Y8LFYXIJks7ulKBp7q2A - Gustavo Dejean.
http://www.quehayenlanevera.com
http://www.sc.ehu.es/jiwhehum2/prolog/Temario/Tema1.pdf
