CLASS zcl_variablesvarias_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_variablesvarias_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  DATA lv_fecha_larga TYPE string VALUE '2026/06/29'.
  DATA: lv_anio TYPE string,
        lv_mes TYPE string,
        lv_dia TYPE string.


        SPLIT lv_fecha_larga AT '/' INTO lv_anio lv_mes lv_dia.

        DATA(lv_anio_corto) = '26'.
*        DATA(lv_anio_final) = insert( val = lv_anio_corto sub = '20' off = 0 ).  "FORMA CON INSERT

        DATA(lv_anio_final) = |20{ lv_anio_corto }|.  "FORMA CORTA EN LINEA SIN INSERT


          out->write( |Año cortado: { lv_anio }| ).
          out->write( |Año reconstruido con INSERT: { lv_anio_corto }| ).




  ENDMETHOD.
ENDCLASS.
