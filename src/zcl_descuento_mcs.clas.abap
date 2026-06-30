CLASS zcl_descuento_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_descuento_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA lv_edad TYPE i VALUE 70.
  DATA lv_es_socio TYPE string VALUE abap_true.
  DATA lv_importe TYPE decfloat34 VALUE '50.00'.

        IF lv_edad >= 65 or lv_edad > 12.

             out->write( 'Dto 50%' ).

        ELSEIF lv_es_socio = abap_true and lv_importe > 100.

            out->write( 'Dto 20%' ).

        ELSE.

            out->write( 'Sin descuento' ).

   ENDIF.


  ENDMETHOD.
ENDCLASS.

























