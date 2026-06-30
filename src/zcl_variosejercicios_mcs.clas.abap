CLASS zcl_variosejercicios_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_variosejercicios_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


*    DATA lv_dia_semana TYPE string VALUE 'miercoles'.
*    DATA lv_edad       TYPE i      VALUE 16.
*    DATA lv_tiene_carnet_estudiante TYPE abap_bool VALUE abap_true.
*    DATA lv_precio_final TYPE i.
*
*    " -------------------------------------------------------------
*    " SOLUCIÓN DEL EJERCICIO
*    " -------------------------------------------------------------
*
*    " REGLA 1: Lo primero es mirar si es miércoles (Día del Espectador)
*    IF lv_dia_semana = 'miercoles'.
*        lv_precio_final = 5.
*
*    " REGLA 2: Si no es miércoles, miramos si es un niño (menor de 12)
*    ELSEIF lv_edad < 12.
*        lv_precio_final = 6.
*
*    " REGLA 3: Si no es miércoles ni niño, miramos si es estudiante
*    ELSEIF lv_tiene_carnet_estudiante = abap_true.
*        lv_precio_final = 7.
*
*    " REGLA 4: Si no se ha cumplido nada de lo anterior, paga tarifa normal
*    ELSE.
*        lv_precio_final = 10.
*
*    ENDIF.
*
*    " -------------------------------------------------------------
*    " Al final, mostramos el resultado
*    out->write( 'El precio de tu entrada es de:' ).
*    out->write( lv_precio_final ).



" -------------------------------------------------------------
    " EJERCICIO MAZMORRA "
" -------------------------------------------------------------
*
*        DATA lv_nivel TYPE i VALUE 15.
*        DATA lv_tiene_llave TYPE abap_bool VALUE abap_false.
*        DATA lv_fuerza TYPE i VALUE 60.
*        DATA lv_resultado TYPE string.
*
*
*             IF lv_nivel >= 10 and lv_tiene_llave = abap_true.
*
*                   lv_resultado = ' ¡Has entrado a la mazmorra! '.
*
*
*                    ELSEIF lv_nivel < 5 or lv_fuerza < 20.
*
*                            lv_resultado = ' ¡El personaje ha muerto! '.
*
*                    ELSE.
*
*                            lv_resultado = 'El personaje decide huir'.
*
*
*             ENDIF.
*
*                            out->write( lv_resultado ).



" -------------------------------------------------------------
    " EJERCICIO EL ROBOT CAMARERO "
" -------------------------------------------------------------
*
*            DATA lv_pedido TYPE string.
*
*
*            DO 3 TIMES.
*
*            CASE sy-index.
*
*                    WHEN 1.
*
*                        lv_pedido = 'Mesa 1: Café con leche'.
*
*
*                    WHEN 2.
*
*                        lv_pedido = 'Mesa 2: Té Verde'.
*
*
*                    WHEN 3.
*
*                        lv_pedido = 'Mesa 3: Tostadas y zumo'.
*
*
*
*
*            ENDCASE.
*
*                         out->write( lv_pedido ).
*
*            ENDDO.



* -------------------------------------------------------------
*    " EJERCICIO EL DETECTOR DE INTRUSOS "
* -------------------------------------------------------------

*        DATA lv_mensaje TYPE string.
*
*            DO 10 TIMES.
*
*                IF sy-index = 7.
*
*                    out->write( '¡Intruso detectado en el turno 7!' ).
*
*                    EXIT.
*
*                ELSEIF sy-index MOD 2 = 0.
*
*                    lv_mensaje = |Turno { sy-index }: Inviado VIP|.
*
*                ELSE.
*
*                    lv_mensaje = |Turno { sy-index }: Invitado normal|.
*
*
*                ENDIF.
*
*                    out->write( lv_mensaje ).
*
*              ENDDO.



* -------------------------------------------------------------
*    " CONTROL CALIDAD BOMBONES "
* -------------------------------------------------------------
*
*        DATA lv_estado TYPE string.
*
*                DO 10 TIMES.
*
*                     IF sy-index = 5.
*
*                    out->write( '¡Bombón defectuoso! Parando la máquina!'  ).
*
*                     EXIT.
*
*                ELSEIF sy-index MOD 2 <> 0.
*
*                   lv_estado = |Bombón { sy-index }: Fresa |..
*
*
*                ELSE.
*
*                   lv_estado = |Bombón {  sy-index }: Chocolate negro |.
*
*
*                    ENDIF.
*
*                    out->write( lv_estado ).
*
*                 ENDDO.

*-------------------------------------------------------------
**    " LANZAMIENTO DEL COHETE SAPCE-X "
**-------------------------------------------------------------

*
*        DATA lv_estado TYPE string.
*
*        DO 10 TIMES.
*
*
*                IF sy-index = 6.
*
*
*                    out->write( '¡FALLO EN EL SEGUNDO 6! Abortando lazamiento' ).
*
*                    EXIT.
*
*
*                ELSEIF sy-index MOD 2 = 0.
*
*
*                    lv_estado = | Segundo { sy-index }: Motores ok |.
*
*
*                ELSE.
*
*                    lv_estado = | Segundo { sy-index }: Sistemas ok |.
*
*
*
*                ENDIF.
*
*                    out->write( lv_estado ).
*
*
*
*            ENDDO.

*-------------------------------------------------------------
**    " CONTROL MONTAÑA RUSA "
**-------------------------------------------------------------




*
*        DATA lv_mensaje TYPE string.
*
*
*            DO 8 TIMES.
*
*                    IF sy-index = 4.
*
*                         out->write( 'Asiento 4: RESERVADO PARA FOTOGRAFÍA' ).
*
*                       EXIT.
*
*
*                    ELSEIF sy-index MOD 2 = 0.
*
*
*                        lv_mensaje = |Asiento { sy-index }: Pantalla interactiva ok |.
*
*
*                    ELSE.
*
*                         lv_mensaje = |Asiento { sy-index }: Altavoces ok |.
*
*
*                     ENDIF.
*
*                         out->write( lv_mensaje ).
*
*
*            ENDDO.


*-------------------------------------------------------------
**    " MANTENIMIENTO TELESCOPIO "
**-------------------------------------------------------------

*
*            DATA lv_mensaje TYPE string.
*
*
*                    DO 20 TIMES.
*
*
*                            IF sy-index = 15.
*
*                                lv_mensaje = '¡BATERÍA CRÍTICA EN CUADRANTE 15! Apagando Telescopio'.
*
*                                    out->write( lv_mensaje ).
*
*                                EXIT.
*
*
*                            ELSEIF sy-index MOD 2 = 0 AND sy-index > 10.
*
*                                lv_mensaje = |Cuadrante { sy-index }: ¡Alerta! Agujero negro detectado|.
*
*
*                            ELSEIF sy-index MOD 2 = 0 AND sy-index <= 10.
*
*                                lv_mensaje = |Cuadrante { sy-index }: Estrella brillante detectada|.
*
*
*                            ELSE.
*
*                                lv_mensaje = |Cuadrante { sy-index }: Espacio vacío|.
*
*
*                            ENDIF.
*
*                                    out->write( lv_mensaje ).
*
*                            ENDDO.





**-------------------------------------------------------------
    " RETO CON WHILE: LA BATERÍA DEL MÓVIL "
**-------------------------------------------------------------

*
*        DATA lv_bateria TYPE i VALUE 100.
*        DATA lv_mensaje TYPE string.
*
*
*                  WHILE lv_bateria > 0.
*
*                        IF lv_bateria <= 20.
*
*                             lv_mensaje = | Batería al { lv_bateria }%: ¡Por favor conecte el cargador! |.
*
*
*                 ELSE.
*
*                           lv_mensaje = | Batería al { lv_bateria }%: Funcionando normalmente |.
*
*
*                 ENDIF.
*
*                            out->write( lv_mensaje ).
*
*                            lv_bateria = lv_bateria - 10.
*
*                 ENDWHILE.
*
*
*
*                          out->write( 'El teléfono se ha apagado. Batería agotada' ).



**-------------------------------------------------------------
    " RETO CON WHILE: CONTROL TEMPERATURA HORNO "
**-------------------------------------------------------------

*
*            DATA lv_temperatura TYPE i VALUE 0.
*            DATA lv_mensaje TYPE string.
*
*
*                    WHILE lv_temperatura < 180.
*
*
*
*                    IF lv_temperatura <= 90.
*
*                           lv_mensaje = |Horno a { lv_temperatura }ºC: Calentando rápido|.
*
*
*                    ELSE.
*
*                           lv_mensaje = |Horno a { lv_temperatura }ºC: Calentando rápido|.
*
*
*                    ENDIF.
*
*                                out->write( lv_mensaje ).
*
*
*                                lv_temperatura = lv_temperatura + 30.
*
*                    ENDWHILE.
*
*
*
*                                out->write( '¡Horno a 180º! Introducir las galletas.' ).
*




**-------------------------------------------------------------
    " RETO CON WHILE: ATERRIZAJE EN MARTE "
**-------------------------------------------------------------

*            DATA lv_altura TYPE i VALUE 90.
*            DATA lv_mensaje TYPE string.
*
*
*                WHILE lv_altura > 0.
*
*
*                         IF lv_altura = 50.
*
*                                 lv_mensaje = 'Tormenta de arena a 50M! Abortando y activando propulsores de escape'.
*
*                                 out->write( lv_mensaje ).
*
*                                 EXIT.
*
*
*                         ELSEIF lv_altura MOD 2 = 0 AND lv_altura > 50.
*
*                                lv_mensaje = | Altura { lv_altura }m:Tren de aterrizaje desplegado.|.
*
*
*                         ELSE.
*
*                                lv_mensaje = | Altura { lv_altura }m: Descenso controlado.|.
*
*
*                         ENDIF.
*
*                                out->write( lv_mensaje ).
*
*                                lv_altura = lv_altura - 10.
*
*
*                        ENDWHILE.
*
*
*                                lv_mensaje = '¡Sonda en la superficie de Marte! Misión un éxito'.



**-------------------------------------------------------------
    " RETO CON CASE:  "SELECTOR DE MODOS"
**-------------------------------------------------------------

*
*            DATA lv_modo TYPE string.
*            DATA lv_mensaje TYPE string.
*
*
*                CASE lv_modo.
*
*                        WHEN 'ECO'.
*
*                                lv_mensaje = 'Modo Ahorro: Consumo mínimo'.
*
*
*                        WHEN 'SPORT'.
*
*                                lv_mensaje = 'Modo deportivo: Máxima potencia activada'.
*
*
*                        WHEN 'CONFORT'.
*
*                                lv_mensaje = 'Modo confort: Suspensión suave'.
*
*
*                        WHEN OTHERS.
*
*                                lv_mensaje = 'Modo desconocido: Conducción estándar'.
*
*
*                ENDCASE.
*
*                                out->write( lv_mensaje ).


**-------------------------------------------------------------
    " RETO BUCLES ANIDADOS. EL DISEÑADOR DE SUELOS"
**-------------------------------------------------------------

*
*               DATA lv_fila TYPE i.
*               DATA lv_columna TYPE i.
*
*                        DO 3 TIMES.
*
*                                lv_fila = sy-index.
*
*
*                                DO 2 TIMES. """"" HASTA QUE NO ACABE ESTE BUCLE. NO SIGUE EL BUCLE DE FUERA""""""
*
*                                        lv_columna = sy-index.
*
*                                        out->write( |Colocando baldosas en fila { lv_fila }, Columna { lv_columna }| ).
*
*                                 ENDDO.
*
*                        ENDDO.


**-------------------------------------------------------------
    " RETO BUCLES ANIDADOS. INSPECCIÓN HABITACIONES DEL HOTEL"
**-------------------------------------------------------------


*        DATA lv_habitacion TYPE i.
*        DATA lv_planta TYPE i.
*
*
*                DO 2 TIMES.
*
*                        lv_planta = sy-index.
*
*
*                        DO 3 TIMES.
*
*                                lv_habitacion = sy-index.
*
*
*                                     out->write( |Robot revisando Planta { lv_planta }, Habitación { lv_habitacion }| ).
*
*
*                        ENDDO.
*
*                ENDDO.



**-------------------------------------------------------------
    " RETO BUCLES ANIDADOS. EJEMPLO REAL EN UNA EMPRESA"
**-------------------------------------------------------------


*               DATA lv_vendedor TYPE i.
*               DATA lv_venta TYPE i.
*               DATA lv_comision TYPE i.
*
*
*                        DO 3 TIMES.
*
*                                lv_vendedor = sy-index.
*
*
*
*                                DO 2 TIMES.
*
*                                        lv_venta = sy-index.
*
*
*                                                lv_comision = lv_vendedor * lv_venta * 50.
*
*                                                        out->write( | [SAP] Vendedor { lv_vendedor }-> procesando venta Nº { lv_venta }. Comisión { lv_comision }€| ).
*
*                                  ENDDO.
*
*                          ENDDO.



**-------------------------------------------------------------
    " RETO BUCLES ANIDADOS. CONTROL STOCK CASE, IF, WHEN
**-------------------------------------------------------------

*
*                DATA lv_almacen TYPE i.
*                DATA lv_producto TYPE i.
*                DATA lv_accion TYPE string.
*
*
*                        DO 2 TIMES.
*
*                                lv_almacen = sy-index.
*
*                                    DO 3 TIMES.
*
*                                        lv_producto = sy-index.
*
*
*                            "APLICAMOS LÓGICA (CASE Y EL IF)"
*
*
*                        CASE lv_almacen.
*
*
*                               WHEN 1.
*
*                                     IF lv_producto = 1.
*
*                                        lv_accion = 'Compra Urgente'.
*
*
*                                     ELSE.
*
*                                        lv_accion = 'Stock OK'.
*
*                                     ENDIF.
*
*
*                                WHEN 2.
*
*                                        lv_accion = 'Stock ok'.
*
*
*                         ENDCASE.
*
*                                out->write( |[SAP] Centro { lv_almacen }-> proucto { lv_producto }: { lv_accion } | ).
*
*
*
*                          ENDDO.
*                          ENDDO.



**-------------------------------------------------------------
    " RETO: VARIABLES DE TEXTO-> CONDENSE, STRLEN, TO UPPER CASE, TO LOWER CASE
**-------------------------------------------------------------



*
*                DATA lv_codigo   TYPE string VALUE '  b-204   '.
*                DATA lv_longitud TYPE i.
*                DATA lv_mensaje  TYPE string.
*                DATA lv_prueba TYPE string VALUE 'Marieta'.
*
*                " 1. Limpia los espacios de lv_codigo
*
*                        CONDENSE lv_codigo.
*
*
*                " 2. Pasa lv_codigo a mayúsculas
*
*                        TRANSLATE lv_codigo TO UPPER CASE.
*
*
*                " 3. Cuenta las letras de lv_codigo y guárdalo en lv_longitud
*
*
*                        lv_longitud = strlen( lv_codigo ).
*
*
*                  " 4. ¡A por el IF!
*                " Evalúa si lv_longitud es igual a 5...
*
*
*                            IF lv_longitud = 5.
*
*                                lv_mensaje = |Código { lv_prueba } Validado con éxito.|.
*
*
*
*               " 5. Pintamos el resultado final en la consola usando barras | |
*
*                            ELSE.
*
*                                lv_mensaje = |Error: El código { lv_codigo } no tiene 5 caracteres.|.
*
*
*                            ENDIF.
*
*



**-------------------------------------------------------------
    " RETO: VARIABLES DE TEXTO-> SPLIT, INSERT, OVERLAY, FIND
**-------------------------------------------------------------
*
*            DATA(lv_prueba) = 'Hola que tal Marieta yo soy tu profe Marieta'.
*
*            split lv_prueba at '-' INTO DATA(lv_palabra1) DATA(lv_palabra2) DATA(lv_palabra3).

*            out->write( lv_palabra1 ).
*            out->write( lv_palabra2 ).
*            out->write( lv_palabra3 ).

*            lv_palabra3 = SEGMENT( VAL = lv_prueba INDEX = 2 SEP = 'Marieta' ).
*            out->write( lv_palabra3 ).

*            lv_palabra3 = INSERT( VAL = lv_prueba SUB = 'Súper ' OFF = 32 ).
*            out->write( lv_palabra3 ).
*


*    DATA(lv_1) = 'Academia Daniel'.
*    DATA(lv_2) = 'A              _CLASE'.
*
*    OVERLAY lv_2 WITH lv_1.
*    out->write( lv_2 ).

*
*    lv_palabra3 = FIND( VAL = lv_prueba SUB = 'Marieta' ).
*    out->write( lv_palabra3 ).
*

    "Contains
*
*DATA: lv_text    TYPE string,
*      lv_pattern TYPE string.
*
*lv_text    = 'The employee`s number is: 968-64-22-22'.
*lv_pattern = `\d{3}-\d{2}-\d{2}-\d{2}`. "Phone number
*
*IF contains( val = lv_text pcre = lv_pattern ).
*    out->write( 'The text contains a phone number' ).
*ELSE.
*    out->write( 'The text doesn`t contains a phone number' ).
*ENDIF.


"match

*DATA(lv_text)    = 'The 333-444-8888 employee`s number is: 123-456-7890'.
*DATA(lv_pattern) = `\d{3}-\d{3}-\d{4}`.
*
*DATA(lv_number) = match( val = lv_text pcre = lv_pattern occ = 1 ).
*
*out->write( lv_number ).


"Regular Expresiones

DATA: lv_text    TYPE string,
      lv_pattern TYPE string.

lv_text    = 'Please contact us at me lo invento support@logali.com for more information'.
lv_pattern = `\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b`. "regex for email

IF contains( val = lv_text pcre = lv_pattern ).
    out->write( 'The text contains an email address' ).

    " 1. COUNT: Cuenta cuántas veces aparece el patrón (cuántos emails hay)
    DATA(lv_count) = count( val = lv_text pcre = lv_pattern ).
    out->write( lv_count ).

    " 2. FIND: Te dice la posición exacta (el número de letra) donde empieza el email
    DATA(lv_pos) = find( val = lv_text pcre = lv_pattern occ = 1 ).
    out->write( lv_pos ).

ELSE.
    out->write( 'The text does not contain an email address' ).
ENDIF.






ENDMETHOD.
ENDCLASS.
