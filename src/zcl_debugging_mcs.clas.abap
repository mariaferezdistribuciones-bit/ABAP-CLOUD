CLASS zcl_debugging_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_debugging_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*
*    out->write( `=========================================` ).
*    out->write( `       EJERCICIOS DE APLICACIÓN: DEBUG     ` ).
*    out->write( `=========================================` ).
*
*    " ---------------------------------------------------------------------
*    " Misión 1: El Impostor Oculto (Condicionales y Clear)
*    " ---------------------------------------------------------------------
*    DATA(lv_usuario) = 'CONSULTOR_SÉNIOR'.
*    DATA(lv_autorizado) = ' '.
*
*    IF lv_usuario = 'CONSULTOR_SÉNIOR'.
*      lv_autorizado = 'X'.
*    ENDIF.
*
*    " ¡Ojo aquí! Mira lo que pasa en el Debug al ejecutar la siguiente línea:
*    CLEAR lv_usuario.
*
*    IF lv_autorizado = 'X' AND lv_usuario IS INITIAL.
*      out->write( `Misión 1: Acceso concedido en la sombra.` ).
*    ELSE.
*      out->write( `Misión 1: Acceso denegado.` ).
*    ENDIF.
*
*
*    " ---------------------------------------------------------------------
*    " Misión 2: El Bucle Acumulador (Seguimiento de sy-index)
*    " ---------------------------------------------------------------------
*    DATA lv_bolsa_monedas TYPE i VALUE 0.
*
*    DO 4 TIMES.
*      " Pon un Breakpoint dentro de este bucle
*      lv_bolsa_monedas = lv_bolsa_monedas + sy-index.
*    ENDDO.
*
*    out->write( |Misión 2: Monedas totales recolectadas: { lv_bolsa_monedas }| ).




    "EJERCICIO SAP DEBUG



    out->write( `=========================================` ).
    out->write( `   LABORATORIO S4D400: PRÁCTICA DE DEBUG  ` ).
    out->write( `=========================================` ).

    " VARIABLES DEL EJERCICIO
    DATA lv_percentage TYPE i VALUE 0.
    DATA lv_counter    TYPE i VALUE 1.
    DATA lv_total      TYPE i VALUE 0.

    " ---------------------------------------------------------------------
    " EL ACUMULADOR CON TRAMPA (Aquí está el misterio que debes investigar)
    " El programador quería sumar los números del 1 al 4 y calcular el porcentaje.
    " ---------------------------------------------------------------------
    DO 4 TIMES.
      lv_total = lv_total + lv_counter.

      " ¡OJO A ESTA LÍNEA EN EL DEBUG!
      " ¿Qué pasa con el valor de lv_counter en cada vuelta?
      lv_counter = lv_counter + 1.
    ENDDO.

    " Cálculo final del porcentaje estimado basado en el total
    IF lv_total > 0.
      lv_percentage = ( 10 * 100 ) / lv_total.
    ENDIF.

    " IMPRESIÓN DE RESULTADOS
    out->write( |[RESULTADO EN CONSOLA]| ).
    out->write( |Total acumulado: { lv_total }| ).
    out->write( |Porcentaje final calculado: { lv_percentage }%| ).






  ENDMETHOD.
ENDCLASS.



















