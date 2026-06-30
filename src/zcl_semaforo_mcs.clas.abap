CLASS zcl_semaforo_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_semaforo_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


********** IF ANIDADO **********

    DATA lv_stock TYPE i VALUE 8.
    DATA lv_punto_pedido TYPE i VALUE 10.
    DATA lv_stock_seguridad TYPE i VALUE 5.

        IF lv_stock < lv_punto_pedido.

            IF lv_stock < lv_stock_seguridad.

             out->write( 'Pedido Urgente' ).

            ELSE.
             out->write( 'Programar Pedido' ).

            ENDIF.

        ELSE.
             out->write( 'OK: nivel suficiente' ).

        ENDIF.

  ENDMETHOD.
ENDCLASS.
