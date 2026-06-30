CLASS zcl_validaciondatos_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_validaciondatos_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

********* EJERCICIO INITIAL Y BETWEEN ********

    DATA lv_nombre TYPE string VALUE 'María'.
    DATA lv_edad TYPE i VALUE 25.
    DATA lv_email TYPE string VALUE ''.

        IF lv_nombre IS INITIAL.

            out->write( 'Error: falta nombre' ).

    ELSEIF lv_edad NOT BETWEEN 18 and 99.

            out->write( 'Error: edad incorrecta' ).

    ELSEIF lv_email IS INITIAL.

            out->write( 'Error: falta email' ).

    ELSE.

            out->write( 'Datos válidos' ).


    ENDIF.




  ENDMETHOD.
ENDCLASS.
