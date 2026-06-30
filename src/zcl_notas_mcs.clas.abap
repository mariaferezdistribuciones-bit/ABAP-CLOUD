CLASS zcl_notas_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_notas_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

******* EJERCICIO APROBADO/SUSPENSO ******


         DATA lv_nota TYPE i VALUE 4.
         DATA(lv_resultado) =   COND    string( WHEN    lv_nota >=  5   THEN    `APROBADO`  ELSE    `SUSPENSO`  ).

     IF lv_nota >= 9.

        out->write( 'Sobresaliente' ).

     ELSEIF lv_nota >= 7.


     ELSEIF lv_nota >= 5.

          out->write( 'APROBADO' ).

     ELSE.

          out->write( 'SUSPENSO' ).

       ENDIF.

  ENDMETHOD.
ENDCLASS.
