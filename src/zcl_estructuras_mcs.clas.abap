CLASS zcl_estructuras_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_estructuras_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


*  TYPES: BEGIN OF ty_ciudadano,   "esto es el principio para crear la estructura.
*  nombre TYPE ZDE_NOMBRE_MCS,
*  dni TYPE ZDE_DNI_MCS,
*  telefono TYPE ZDE_TELEFONO_MCS,
*  direccion TYPE ZDE_DIRECCION_MCS,
*
*  END OF ty_ciudadano.


  "FORMA 1

*DATA ls_ciudadano TYPE ty_ciudadano.
*
*ls_ciudadano-nombre = 'Antonio'.
*ls_ciudadano-dni = '145236987'.
*ls_ciudadano-telefono = 968123456.
*ls_ciudadano-direccion = 'Mayor 25'.


"FORMA 2  (MANTENEMOS CABECERA)

*DATA(ls_ciudadano) = VALUE ty_ciudadano( nombre = 'Daniel' dni = '14565895' telefono = 96856985 direccion = 'Mayor 25' ).


*out->write( ls_ciudadano ).



"FORMA 2.5


*DATA ls_ciudadano TYPE ty_ciudadano.
*
*ls_ciudadano = VALUE #( nombre = 'Daniel' dni = '12546987' telefono = 96589365 direccion = 'Mayor 25' ).
*
*
*out->write( ls_ciudadano ).




* <<<<<<<<<<<<<<<<<<  "REPASAMOS ESTRUCTURAS Y TABLAS CON GEMINI   >>>>>>>>>>>>>>>>>>>>>>>


TYPES: BEGIN OF ty_zapatilla,       "Primero definimos cómo va a ser una fila (la Estructura)

        id     type i,
        modelo type string,
        talla  type i,


       END OF ty_zapatilla.

       DATA ls_zapatilla TYPE ty_zapatilla.   "Creamos una variable que sea una sola fila (Estructura / Work Area)

       DATA lt_zapatillas TYPE TABLE OF ty_zapatilla.   "Creamos la lista completa (Tabla Interna)


"Truco de nomenclatura profesional: > En los proyectos de SAP se usan prefijos para no volverse loco leyendo el código:

*ty_ = Type (el molde)
*
*ls_ = Local Structure (una sola fila, también llamada Work Area)
*
*lt_ = Local Table (la tabla interna con muchas filas)


"Para manejar una tabla interna, necesitas dominar cuatro operaciones básicas:

*APPEND: Meter una fila nueva al final de la tabla.
*
*LOOP AT: Recorrer la tabla fila por fila para leer o modificar los datos.
*
*READ TABLE: Buscar una fila específica (por ejemplo, buscar la zapatilla con ID = 2).
*
*CLEAR / REFRESH: Vaciar la tabla y dejarla a cero.


"ahora llenamos los campos de la fila suelta (la cabecera) LO HACEMOS CON APPEND TO
*
*ls_zapatilla-id         = 1.
*ls_zapatilla-modelo     = 'Nike Air Max'.
*ls_zapatilla-talla      = 42.
*
*          APPEND ls_zapatilla TO lt_zapatillas.
*
*ls_zapatilla-id         = 2.
*ls_zapatilla-modelo     = 'Adidas Predator'.
*ls_zapatilla-talla      = 43.
*
*          APPEND ls_zapatilla TO lt_zapatillas.
*
*out->write( lt_zapatillas ).
*


"FORMA MÁS ACTUAL SIN APPEND TO: LO HACEMOS CON VALUE # EN LINEA


lt_zapatillas = VALUE #(

    ( id = 1 modelo = 'Nike Air Max' talla = 42 )
    ( id = 2 modelo = 'Adidas Predator' talla = 43 )


).


"EL BUCLE EN LAS TABLAS: LOOP AT (para leer todas las filas)
*
*        LOOP AT lt_zapatillas INTO DATA(ls_fila).
*
*        out->write( |Modelo: { ls_fila-modelo } - Talla: { ls_fila-talla }| ).
*
*
*        ENDLOOP.



"LA BÚSQUEDA: READ TABLE (para usar una sola fila) con una CONDICIÓN: WITH KEY

DATA ls_resultado TYPE ty_zapatilla.

    REaD TABLE lt_zapatillas WITH KEY id = 2 INTO ls_resultado.
*
*    out->write( ls_busqueda ).



"EL SEMÁFORO DE SAP: sy-subrc    (arriba he puesto ls_resultado. en el ejercicio anterior erea ls_busqueda.


" 2. Comprobamos si la ha encontrado usando el semáforo sy-subrc


    IF sy-subrc = 0.
        out->write( |¡Encontrada! El modelo es: { ls_resultado-modelo }| ).
    ELSE.
        out->write( 'No existe ninguna zapatilla con ese ID.' ).
    ENDIF.





  ENDMETHOD.
ENDCLASS.
