CLASS zcl_case_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_case_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data lv_nombre type string value 'daniel'.
    data lv_edad type i value 5.
    data lv_apellido type string value 'Ruiz'.



    do 10 times.  " 3

            lv_edad = lv_edad + 1.
              out->write( ' la edad es ' ).
              out->write( lv_edad ).



    case lv_nombre.

                when 'daniel'.

                            case lv_edad.

                                when 5.

                                    if lv_apellido = 'Ruiz'.
                                        out->write( 'hola daniel ruiz de 5 años ' ).
                                    else.
                                        out->write( 'hola daniel' ).
                                    endif.

                                when 3.
                                    out->write( 'hola daniel de 3 años ' ).

                                when 8.
                                    out->write( 'hola daniel de 8 años ' ).

                                when others.
                                     out->write( 'hola daniel que no tiene ni 5 , 3 o 8 años ' ).

                             endcase.

                when 'fernando'.

                      if lv_edad = 5.
                         out->write( 'hola fernado de 5 años ' ).
                       else.
                        out->write( 'hola de cualquier edad distinta a 5' ).
                      endif.


                when 'pepe'.
                    out->write( 'hola pepe' ).


                when others.
                     out->write( 'no eres ni pepe ni daniel ni fernando' ).

             endcase.


ENDDO.




  ENDMETHOD.
ENDCLASS.
