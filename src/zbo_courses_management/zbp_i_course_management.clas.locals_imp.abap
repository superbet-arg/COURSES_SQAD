CLASS lhc_CourseManagement DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR CourseManagement RESULT result.

ENDCLASS.

CLASS lhc_CourseManagement IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_ContentCreators DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS SetDefaultContentCreator FOR DETERMINE ON MODIFY
      IMPORTING keys FOR ContentCreators~SetDefaultContentCreator.

ENDCLASS.

CLASS lhc_ContentCreators IMPLEMENTATION.

  METHOD SetDefaultContentCreator.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_Faculties DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS SetDefaultFacultie FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Faculties~SetDefaultFacultie.

ENDCLASS.

CLASS lhc_Faculties IMPLEMENTATION.

  METHOD SetDefaultFacultie.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_Students DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS SetDefaultStudent FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Students~SetDefaultStudent.

ENDCLASS.

CLASS lhc_Students IMPLEMENTATION.

  METHOD SetDefaultStudent.
  ENDMETHOD.

ENDCLASS.
