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


    out->write( `=========================================` ).
    out->write( `       EJERCICIOS DE APLICACIÓN: DEBUG     ` ).
    out->write( `=========================================` ).

    " ---------------------------------------------------------------------
    " Misión 1: El Impostor Oculto (Condicionales y Clear)
    " ---------------------------------------------------------------------
    DATA(lv_usuario) = 'CONSULTOR_SÉNIOR'.
    DATA(lv_autorizado) = ' '.

    IF lv_usuario = 'CONSULTOR_SÉNIOR'.
      lv_autorizado = 'X'.
    ENDIF.

    " ¡Ojo aquí! Mira lo que pasa en el Debug al ejecutar la siguiente línea:
    CLEAR lv_usuario.

    IF lv_autorizado = 'X' AND lv_usuario IS INITIAL.
      out->write( `Misión 1: Acceso concedido en la sombra.` ).
    ELSE.
      out->write( `Misión 1: Acceso denegado.` ).
    ENDIF.


    " ---------------------------------------------------------------------
    " Misión 2: El Bucle Acumulador (Seguimiento de sy-index)
    " ---------------------------------------------------------------------
    DATA lv_bolsa_monedas TYPE i VALUE 0.

    DO 4 TIMES.
      " Pon un Breakpoint dentro de este bucle
      lv_bolsa_monedas = lv_bolsa_monedas + sy-index.
    ENDDO.

    out->write( |Misión 2: Monedas totales recolectadas: { lv_bolsa_monedas }| ).

  ENDMETHOD.
ENDCLASS.



















