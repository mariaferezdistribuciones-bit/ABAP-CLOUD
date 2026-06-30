CLASS zcl_tablas_mcs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tablas_mcs IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  TYPES: BEGIN OF ty_ciudadano,   "esto es el principio para crear la estructura.
  nombre TYPE ZDE_NOMBRE_MCS,
  dni TYPE ZDE_DNI_MCS,
  telefono TYPE ZDE_TELEFONO_MCS,
  direccion TYPE ZDE_DIRECCION_MCS,

  END OF ty_ciudadano.



*DATA ls_ciudadano TYPE ty_ciudadano.

DATA lt_ciudadano TYPE TABLE OF ty_ciudadano.   "Creamos tabla.



* ls_ciudadano =  VALUE #(  nombre = 'Juan' dni = '452369' telefono = 968569854 direccion = 'Mayor 25'  ).
*
* INSERT ls_ciudadano INTO lt_ciudadano INDEX 1.
*
*ls_ciudadano =  VALUE #(  nombre = 'Ana' dni = '4525559' telefono = 968569854 direccion = 'Mayores 25'  ).
*
* INSERT ls_ciudadano INTO lt_ciudadano INDEX 2.
*
*
*ls_ciudadano =  VALUE #(  nombre = 'Anabel' dni = '43335559' telefono = 968569854 direccion = 'Luna 25'  ).
*
* INSERT ls_ciudadano INTO lt_ciudadano INDEX 3.

*
*out->write( lt_ciudadano ).

INSERT VALUE #(

    nombre = 'Juan'
    dni = '45785698'
    telefono = 9682563325
    direccion = 'Luna 25' ) INTO TABLE lt_ciudadano.


INSERT VALUE #(

    nombre = 'Pepe'
    dni = '123456789'
    telefono = 9682563652
    direccion = 'Marte 25' ) INTO TABLE lt_ciudadano.



INSERT VALUE #( nombre = 'Pepe' dni = '123456789' telefono = 9682563652 direccion = 'Marte 25' ) INTO TABLE lt_ciudadano.


out->write( lt_ciudadano ).




  ENDMETHOD.
ENDCLASS.
