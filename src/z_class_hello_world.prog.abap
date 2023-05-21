*&---------------------------------------------------------------------*
*& Report Z_CLASS_HELLO_WORLD
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_class_hello_world.

CLASS lcl_hello_world DEFINITION.
  PUBLIC SECTION.
    METHODS: constructor.

  PRIVATE SECTION.
    CONSTANTS lc_hello TYPE string VALUE 'Hello World!'.

    METHODS display_hello.
ENDCLASS.

CLASS lcl_hello_world IMPLEMENTATION.
  METHOD constructor.
    me->display_hello( ).
  ENDMETHOD.

  METHOD display_hello.
    WRITE: / lc_hello.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  DATA: lo_hello_world TYPE REF TO lcl_hello_world.

  lo_hello_world = NEW lcl_hello_world( ).
