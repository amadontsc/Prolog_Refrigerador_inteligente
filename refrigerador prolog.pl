%ingredientes disponibles
es_Ingrediente(jamon).
es_Ingrediente(queso).
es_Ingrediente(mayonesa).
es_Ingrediente(tomate).
es_Ingrediente(cebolla).
es_Ingrediente(lechuga).
es_Ingrediente(mostaza).
es_Ingrediente(pan_barra).
es_Ingrediente(tortillas).
es_Ingrediente(aderezo).
es_Ingrediente(leche).
es_Ingrediente(cereal).
es_Ingrediente(sal).
es_Ingrediente(pimienta).
es_Ingrediente(salami).
es_Ingrediente(atun).
es_Ingrediente(agua).
es_Ingrediente(levadura).
es_Ingrediente(azucar).
es_Ingrediente(harina).
es_Ingrediente(aceite).

%Dificultad del platillo
dificultad(sandwich,sencillo).
dificultad(quesadilla,sencillo).
dificultad(ensalada_de_atun,sencillo).
dificultad(cereal,muy_sencillo).
dificultad(pizza,poco_complicado).

%Tiempo aproximado de preparacion de platillo(en minutos)
tiempo_de_preparacion_min(sandwich,12).
tiempo_de_preparacion_min(quesadilla,10).
tiempo_de_preparacion_min(ensalada_atun,15).
tiempo_de_preparacion_min(cereal,2).
tiempo_de_preparacion_min(pizza,30).

%ingredientes de platillos en lista
ingredientes_platillo(sandwich,jamon).
ingredientes_platillo(sandwich,queso).
ingredientes_platillo(sandwich,pan_barra).
ingredientes_platillo(sandwich,mayonesa).
ingredientes_platillo(sandwich,mostaza).
ingredientes_platillo(sandwich,lechuga).
ingredientes_platillo(sandwich,tomate).
ingredientes_platillo(sandwich,cebolla).

ingredientes_platillo(quesadilla,queso).
ingredientes_platillo(quesadilla,tortillas).

ingredientes_platillo(ensalada_de_atun,atun).
ingredientes_platillo(ensalada_de_atun,pimienta).
ingredientes_platillo(ensalada_de_atun,lechuga).
ingredientes_platillo(ensalada_de_atun,tomate).
ingredientes_platillo(ensalada_de_atun,aderezo).

ingredientes_platillo(cereal,cereal).
ingredientes_platillo(cereal,leche).

ingredientes_platillo(pizza,salami).
ingredientes_platillo(pizza,harina).
ingredientes_platillo(pizza,queso).
ingredientes_platillo(pizza,levadura).
ingredientes_platillo(pizza,azucar).
ingredientes_platillo(pizza,agua).
ingredientes_platillo(pizza,aceite).
ingredientes_platillo(pizza,sal).



%platillos
platillo(sandwich):- es_Ingrediente(pan_barra),es_Ingrediente(jamon),es_Ingrediente(mostaza),
	es_Ingrediente(mayonesa),es_Ingrediente(tomate),es_Ingrediente(cebolla),es_Ingrediente(lechuga),
	es_Ingrediente(queso).

platillo(quesadilla):- es_Ingrediente(queso),es_Ingrediente(tortillas).

platillo(ensalada_de_atun):- es_Ingrediente(atun), es_Ingrediente(lechuga), es_Ingrediente(tomate),es_Ingrediente(aderezo),
	es_Ingrediente(pimienta).

platillo(cereal):- es_Ingrediente(cereal), es_Ingrediente(leche).

platillo(pizza):- es_Ingrediente(queso),es_Ingrediente(salami),es_Ingrediente(levadura),es_Ingrediente(azucar),
	es_Ingrediente(harina), es_Ingrediente(aceite),es_Ingrediente(agua),es_Ingrediente(sal).


platillo_sencillo(X):- dificultad(X,Y), Y=sencillo.
platillo_sencillo(X):- dificultad(X,Y), Y=muy_sencillo.


platillo_complicado(X):- dificultad(X,Y), Y=poco_complicado.
platillo_complicado(X):- dificultad(X,Y), Y=complicado.


platillo_rapido(X):- tiempo_de_preparacion_min(X,Y), Y<15.

platillo_grande(X):- tiempo_de_preparacion_min(X,Y), Y>=15.















