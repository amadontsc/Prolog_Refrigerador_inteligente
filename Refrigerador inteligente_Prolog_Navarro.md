

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

