CLASS zcl_semafrojo_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_semafrojo_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

        DATA lv_mensaje TYPE string.

            DO 3 times.

            CASE sy-index.

                WHEN 1.

                    lv_mensaje =  'Mensaje 1'.

                WHEN 2.

                     lv_mensaje =  'Mensaje 2'.

                WHEN 3.

                     lv_mensaje =  'Mensaje 3'.



            ENDCASE.

                        out->write( lv_mensaje ).


    ENDDO.



  ENDMETHOD.
ENDCLASS.
