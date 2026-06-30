CLASS zcl_cursosaplearning_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_cursosaplearning_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.



*                            EJERCICIO BÁSICO EN CURSO SAP LEARNING

* Data Objects with Built-in Types
**********************************************************************

    " comment/uncomment the following declarations and check the output
*    DATA variable TYPE string.
*    DATA variable TYPE i.
*    DATA variable TYPE d.
*    DATA variable TYPE c LENGTH 10.
*    DATA variable TYPE n LENGTH 10.
*    DATA variable TYPE p LENGTH 8 DECIMALS 2.

* Output
**********************************************************************

*    out->write(  'Result with Initial Value)' ).
**    out->write(   variable ).
*    out->write(  '---------' ).
*
*    variable = '19891109'.
*
*    out->write(  'Result with Value 19891109' ).
**    out->write(   variable ).
*    out->write(  '---------' ).



*                                  EJERCICIO OBJETO DE DATOS SAP LEARNING


* Example 1: Local Types
**********************************************************************
*
** Comment/Uncomment the following lines to change the type of my_var
*    TYPES my_type TYPE p LENGTH 3 DECIMALS 2.
**    TYPES my_type TYPE i .
**    TYPES my_type TYPE string.
**    TYPES my_type TYPE n length 10.
*
** Variable based on local type
*    DATA my_variable TYPE my_type.
*
*    out->write(  `my_variable (TYPE MY_TYPE)` ).
*    out->write(   my_variable ).
*
** Example 2: Global Types
***********************************************************************
*
** Variable based on global type .
*    " Place cursor on variable and press F2 or F3
*    DATA airport TYPE /dmo/airport_id VALUE 'FRA'.
*
*    out->write(  `airport (TYPE /DMO/AIRPORT_ID )` ).
*    out->write(   airport ).
*
** Example 3: Constants
***********************************************************************
*
*    CONSTANTS c_text   TYPE string VALUE `Hello World`.
*    CONSTANTS c_number TYPE i      VALUE 12345.
*
*    "Uncomment this line to see syntax error ( VALUE is mandatory)
**  constants c_text2   type string.
*
*    out->write(  `c_text (TYPE STRING)` ).
*    out->write(   c_text ).
*    out->write(  '---------' ).
*
*    out->write(  `c_number (TYPE I )` ).
*    out->write(   c_number ).
*    out->write(  `---------` ).
*
** Example 4: Literals
***********************************************************************
*
*    out->write(  '12345               ' ).    "Text Literal   (Type C)
*    out->write(  `12345               ` ).    "String Literal (Type STRING)
*    out->write(  12345                  ).    "Number Literal (Type I)
*
*    "uncomment this line to see syntax error (no number literal with digits)
**    out->write(  12345.67                  ).




                                "EJERCICIO CÁLCULOS ARITMÉTICOS


* Declarations
**********************************************************************

*    " comment/uncomment these line for different result types
**    TYPES t_result TYPE p LENGTH 8 DECIMALS 2.
**    TYPES t_result TYPE p LENGTH 8 DECIMALS 0.
*    TYPES t_result TYPE i.
*
*    DATA result TYPE t_result.
*
** Calculations
***********************************************************************
*    " comment/uncomment these lines for different calculations
*
**    result = 2 + 3.
*    result = 2 - 3.
**    result = 2 * 3.
**    result = 2 / 3.
**
*    result = sqrt( 2 ).
*    result = ipow( base = 2 exp = 3 ).
**
**    result = ( 8 * 7 - 6 ) / ( 5 + 4 ).
**   result = 8 * 7 - 6 / 5 + 4.
*
** Output
***********************************************************************
*
*    out->write( result ).



                                    "EJERCICIO PROCESAMIENTO DE CADENAS



* Declarations
**********************************************************************
*    TYPES t_amount TYPE  p LENGTH 8 DECIMALS 2.
*
*    DATA amount   TYPE t_amount VALUE '3.30'.
*    DATA amount1  TYPE t_amount VALUE '1.20'.
*    DATA amount2  TYPE t_amount VALUE '2.10'.
*
*    DATA the_date  TYPE d                     VALUE '19891109'.
*    DATA my_number TYPE p LENGTH 3 DECIMALS 2 VALUE '-273.15'.
*
*    DATA part1 TYPE string VALUE `Hello`.
*    DATA part2 TYPE string VALUE `World`.

* String Templates
**********************************************************************

    " comment/uncomment the following lines for different examples
*    DATA(text) = |Hello World|.
*    DATA(text) = |Total: { amount } EUR|.
*    DATA(text) = |Total: { amount1 + amount2 } EUR|.

* Format Options
**********************************************************************

    "Date
*    DATA(text) = |Raw Date: { the_date             }|.
*    DATA(text) = |ISO Date: { the_date Date = ISO  }|.
*    DATA(text) = |USER Date:{ the_date Date = USER }|.

    "Number
*    DATA(text) = |Raw Number { my_number                    }|.
*    DATA(text) = |User Format{ my_number NUMBER = USER      }|.
*    DATA(text) = |Sign Right { my_number SIGN = RIGHT       }|.
*    DATA(text) = |Scientific { my_number STYLE = SCIENTIFIC }|.

* String expression (concatenation Operator)
**********************************************************************

*    DATA(text) = part1 && part2.
*    DATA(text) = part1 && | | && part2.
*    DATA(text) = |{ amount1 } + { amount2 }| &&
*                 | = | &&
*                 |{ amount1 + amount2 }|.
*
*
** Output
***********************************************************************
*
*    out->write( text ).


*DATA lv_number1 TYPE i.
*DATA lv_number2 TYPE i.
*DATA lv_resultado TYPE p LENGTH 8 DECIMALS 2.
*
*lv_number1 = -8.
*lv_number2 = 3.
*
*    lv_resultado = lv_number1 / lv_number2.
*
*
*DATA(output) = |{ lv_number1 } / { lv_number2 }|.   "el output me escribe la formula entera: -8 / 3 = x
*
*out->write( OUTPUT ).




                                    "MANEJO DE EXCEPCIONES: TRY, CATCH, ENDTRY.


* Declarations
**********************************************************************
    DATA result TYPE i.

    DATA numbers TYPE TABLE OF i.

* Preparation
**********************************************************************

    APPEND 123 TO numbers.

* Example 1: Conversion Error (no Number)
**********************************************************************

    CONSTANTS c_text TYPE string VALUE 'ABC'.
*    CONSTANTS c_text TYPE string VALUE '123'.

    out->write(  `---------------------------` ).
    out->write(  `Example 1: Conversion Error` ).
    out->write(  `---------------------------` ).

    TRY.
        result = c_text.
        out->write( |Converted content is { result }|  ).
      CATCH cx_sy_conversion_no_number.
        out->write( |Error: { c_text } is not a number!| ).
    ENDTRY.

* Example 2: Division by Zero
**********************************************************************

    CONSTANTS c_number TYPE i VALUE 0.
*    CONSTANTS c_number TYPE i VALUE 7.

    out->write(  `---------------------------` ).
    out->write(  `Example 2: Division by Zero` ).
    out->write(  `---------------------------` ).

    TRY.
        result = 100 / c_number.
        out->write( |100 divided by { c_number } equals { result }| ).
      CATCH cx_sy_zerodivide.
        out->write(  `Error: Division by zero is not defined!` ).
    ENDTRY.

* Example 3: Itab Error (Line Not Found)
**********************************************************************

    CONSTANTS c_index TYPE i VALUE 2.
*    CONSTANTS c_index TYPE i VALUE 1.

    out->write(  `-------------------------` ).
    out->write(  `Example 3: Line Not Found` ).
    out->write(  `-------------------------` ).

    TRY.
        result = numbers[ c_index ].
        out->write( |Content of row { c_index } equals { result }| ).
      CATCH cx_sy_itab_line_not_found.
        out->write(  `Error: Itab has less than { c_index } rows!` ).
    ENDTRY.


* Example 4: Combination of Different Exceptions
**********************************************************************
*    CONSTANTS c_char TYPE c LENGTH 1 VALUE 'X'.
*    CONSTANTS c_char TYPE c length 1 value '0'.
    CONSTANTS c_char TYPE c LENGTH 1 VALUE '1'.
*    CONSTANTS c_char TYPE c length 1 value '2'.

    out->write(  `----------------------` ).
    out->write(  `Example 4: Combination` ).
    out->write(  `----------------------` ).

    TRY.
        result = numbers[ 2 / c_char ].
        out->write( |Result: { result } | ).
      CATCH cx_sy_zerodivide.
        out->write( `Error: Division by zero is not defined`  ).
      CATCH cx_sy_conversion_no_number.
        out->write( |Error: { c_char } is not a number! | ).
      CATCH cx_sy_itab_line_not_found.
        out->write( |Error: Itab contains less than { 2 / c_char } rows| ).
    ENDTRY.










  ENDMETHOD.
ENDCLASS.
