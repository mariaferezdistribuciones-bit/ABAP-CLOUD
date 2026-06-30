CLASS zcl_ejercicio_if_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ejercicio_if_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.





  DATA lv_edad TYPE i VALUE 14.

  DATA lv_nombre TYPE string VALUE 'Ramón'.



    " este código de abajo sería la forma correcta"


        if lv_edad < 12 and lv_nombre = 'Daniel'.

        out->write( 'Tienes un descuento del 20%' ).

     ELSEIF lv_edad < 18 and lv_edad > 12 and lv_nombre = 'Daniel' or lv_nombre = 'Juan'.

        out->write( 'Tienes un descuento del 10%' ).

     ELSEIF lv_edad <= 65 and lv_edad >= 18 or lv_nombre = 'Ramón'.

        out->write( 'No se aplica descuento' ).

     ELSEIF lv_edad > 65 and lv_nombre = 'Pepe'.

        out->write( 'Tienes un descuento del 20%' ).

     ELSE.

        out->write( 'No estás en la lista, no aplica descuento' ).



     ENDIF.

*
*        if lv_edad < 12.
*
*        out->write( 'Tienes un descuento del 20%' ).
*
*      ENDIF.
*
*         if lv_edad >= 12 and lv_edad <= 18.
*
*         out->write( 'Tienes un descuento del 20%' ).
*
*      ENDIF.
*
*        if lv_edad > 18 and lv_edad <= 65.
*
*        out->write( 'No se aplica descuento' ).
*
*      ENDIF.
*
*        if lv_edad >= 65.
*
*        out->write( 'Tienes un descuento del 20%' ).
*
*      ENDIF.





  ENDMETHOD.

ENDCLASS.

