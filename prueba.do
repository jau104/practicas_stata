************
** Prueba **
************

** generar variables nuevas

gen variable=.

** ejemplo margins (ver)

margins salary, education(1)

* ID con egen

// en el contexto de uso de la EPH se puede generar una variable ID que cumpla con ciertas características, en este caso 
// la nueva variable "hogar" contendrá un identificador único para cada grupo de observaciones que tengan el mismo valor
// de codusu, trimestre y nro_hogar. Esto es útil cuando se quiere trabajar con datos a nivel de grupo o cuando se necesita
// identificar y distinguir diferentes conjuntos de observaciones dentro de un conjunto de datos.

egen hogar=group(codusu trimestre nro_hogar)

// entonces como resultado  vamos a obtener una variable que nos permita identificar el hogar al que
// pertenece cada individuo de la EPH.

* tomamos los individuos del aglomerado SS Jujuy Palpala

keep if aglomerado==19

****** usar tablas de Stata 14 en Stata 17 ******

version 14: //linea do de tablas u otro comando que se necesite ejecuatar como stata 14







