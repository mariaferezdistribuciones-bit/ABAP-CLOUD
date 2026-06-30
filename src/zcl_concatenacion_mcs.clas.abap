CLASS zcl_concatenacion_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_concatenacion_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "FORMA 1. LA MÁS ACTUAL. USAMOS ||

*  DATA lv_pedido TYPE i VALUE 55012.
*  DATA lv_empresa TYPE string VALUE 'Logali'.
*  DATA lv_asunto_final TYPE string.
*
*   TRANSLATE lv_empresa TO UPPER CASE.  "pasamos logali a mayúsculas.
*
*   lv_asunto_final = | Pedido Nº{ lv_pedido } - Cliente { lv_empresa } |.
*
*   out->write( lv_asunto_final ).


"FORMA 2. CONCATENATE

*DATA lv_fecha TYPE string VALUE '20260626'.
*DATA lv_nombre TYPE string VALUE '_Clientes'.
*
*DATA lv_resultado_a TYPE string.
*DATA lv_resultado_b TYPE string.
*
*CONCATENATE lv_fecha lv_nombre INTO lv_resultado_a.
*
*lv_resultado_b = |{ lv_fecha  }{ lv_nombre }.xsls|.
*
*        out->write( |Forma A: { lv_resultado_a }| ).
*        out->write( |Forma B: { lv_resultado_b }| ).
*




"forma más actual de pasar a mayúsculas sin tanto código


        DATA lv_email TYPE string VALUE '   soporte@logali.com   '.
        DATA lv_mensaje TYPE string.


            lv_mensaje = |El correo configurado es { to_upper( condense( lv_email ) ) } |.
            out->write( lv_mensaje ).





  ENDMETHOD.
ENDCLASS.
