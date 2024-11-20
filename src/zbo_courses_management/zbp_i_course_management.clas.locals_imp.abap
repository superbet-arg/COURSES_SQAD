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
    METHODS validateContentUser FOR VALIDATE ON SAVE
      IMPORTING keys FOR ContentCreators~validateContentUser.

ENDCLASS.

CLASS lhc_ContentCreators IMPLEMENTATION.

  METHOD SetDefaultContentCreator.

    " Read the instances of the Faculties entity based on the transferred keys
    READ ENTITIES OF zi_course_management IN LOCAL MODE
      ENTITY ContentCreators
        FIELDS ( Assignment )
        WITH CORRESPONDING #( keys )
      RESULT DATA(ContentC)
      FAILED DATA(read_failed).

    " Check if the read failed, and handle the error if needed
    IF read_failed IS NOT INITIAL.
      " Handle the error (you can log or raise an exception)
      RETURN. " Exit if there are errors
    ENDIF.

    " Modify the entities by setting the Assignment field to a default value ('F')
    MODIFY ENTITIES OF zi_course_management IN LOCAL MODE
        ENTITY ContentCreators
          UPDATE SET FIELDS
            WITH VALUE #( FOR Content IN ContentC ( %tky       = Content-%tky
                                                     Assignment = 'C' ) )
        REPORTED DATA(update_reported).
*MODIFY ENTITIES OF zi_course_management in local mode
*ENTITY Faculties
*create by \_Faculties
*FIELDS (CourseId Assignment UserId)
*WITH VALUE#( ( %cid = 'cid3'
*                CourseId = '111'
*                UserId = '666') ).
*
    " Optionally handle failed updates
    IF update_reported IS NOT INITIAL.
      " Handle the failed updates, log them or raise an exception
    ENDIF.

  ENDMETHOD.

*  METHOD validateCourseUser.
*
*    READ ENTITY zr_acourse_users
*      FIELDS ( CourseId Assignment UserId )
*      WITH CORRESPONDING #( keys )
*    RESULT DATA(CourseUsers)
*    FAILED DATA(read_failed).
*
**  ENDMETHOD.
*

  METHOD validateContentUser.

    READ ENTITIES OF zi_course_management IN LOCAL MODE
         ENTITY ContentCreators
         FIELDS ( CourseId UserId Assignment )
         WITH CORRESPONDING #( keys )
         " TODO: variable is assigned but never used (ABAP cleaner)
         RESULT DATA(Content)
         " TODO: variable is assigned but never used (ABAP cleaner)
         FAILED DATA(read_failed).

*    READ ENTITY zr_acourse_users
*    FROM VALUE #( (   ) )
**         FIELDS ( CourseId Assignment UserId )
**         WITH CORRESPONDING #( content )
*         RESULT DATA(CourseUsers)
*         " TODO: variable is assigned but never used (ABAP cleaner)
*         FAILED DATA(failed_data).


*         APPEND VALUE #( %TKY = courseusers-  ) TO .
  ENDMETHOD.

ENDCLASS.

CLASS lhc_Faculties DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS SetDefaultFacultie FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Faculties~SetDefaultFacultie.
    METHODS validateFacultytUser FOR VALIDATE ON SAVE
      IMPORTING keys FOR Faculties~validateFacultytUser.

ENDCLASS.

CLASS lhc_Faculties IMPLEMENTATION.

  METHOD SetDefaultFacultie.
    " Read the instances of the Faculties entity based on the transferred keys
    READ ENTITIES OF zi_course_management IN LOCAL MODE
      ENTITY Faculties
        FIELDS ( Assignment )
        WITH CORRESPONDING #( keys )
      RESULT DATA(Faculties)
      FAILED DATA(read_failed).

    " Check if the read failed, and handle the error if needed
    IF read_failed IS NOT INITIAL.
      " Handle the error (you can log or raise an exception)
      RETURN. " Exit if there are errors
    ENDIF.

    " Modify the entities by setting the Assignment field to a default value ('F')
    MODIFY ENTITIES OF zi_course_management IN LOCAL MODE
        ENTITY Faculties
          UPDATE SET FIELDS
            WITH VALUE #( FOR Faculty IN Faculties ( %tky       = Faculty-%tky
                                                     Assignment = 'F' ) )
        REPORTED DATA(update_reported).
*MODIFY ENTITIES OF zi_course_management in local mode
*ENTITY Faculties
*create by \_Faculties
*FIELDS (CourseId Assignment UserId)
*WITH VALUE#( ( %cid = 'cid3'
*                CourseId = '111'
*                UserId = '666') ).
*
    " Optionally handle failed updates
    IF update_reported IS NOT INITIAL.
      " Handle the failed updates, log them or raise an exception
    ENDIF.
  ENDMETHOD.

  METHOD validateFacultytUser.

    READ ENTITIES OF zi_course_management IN LOCAL MODE
       ENTITY Faculties
       FIELDS ( CourseId UserId Assignment )
       WITH CORRESPONDING #( keys )
       " TODO: variable is assigned but never used (ABAP cleaner)
       RESULT DATA(Faculties)
       FAILED DATA(read_failed).

    READ ENTITY zr_acourse_users
FIELDS ( CourseId Assignment UserId )
WITH CORRESPONDING #( keys )
RESULT DATA(CourseUsers)
" TODO: variable is assigned but never used (ABAP cleaner)
FAILED DATA(failed_data).


  ENDMETHOD.

ENDCLASS.

CLASS lhc_Students DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS SetDefaultStudent FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Students~SetDefaultStudent.
    METHODS validateStudentUser FOR VALIDATE ON SAVE
      IMPORTING keys FOR Students~validateStudentUser.

ENDCLASS.

CLASS lhc_Students IMPLEMENTATION.

  METHOD SetDefaultStudent.

    " Read the instances of the Faculties entity based on the transferred keys
    READ ENTITIES OF zi_course_management IN LOCAL MODE
      ENTITY Students
        FIELDS ( Assignment )
        WITH CORRESPONDING #( keys )
      RESULT DATA(Students)
      FAILED DATA(read_failed).

    " Check if the read failed, and handle the error if needed
    IF read_failed IS NOT INITIAL.
      " Handle the error (you can log or raise an exception)
      RETURN. " Exit if there are errors
    ENDIF.

    " Modify the entities by setting the Assignment field to a default value ('F')
    MODIFY ENTITIES OF zi_course_management IN LOCAL MODE
        ENTITY Students
          UPDATE SET FIELDS
            WITH VALUE #( FOR Student IN Students ( %tky       = Student-%tky
                                                     Assignment = 'S' ) )
        REPORTED DATA(update_reported).
*MODIFY ENTITIES OF zi_course_management in local mode
*ENTITY Faculties
*create by \_Faculties
*FIELDS (CourseId Assignment UserId)
*WITH VALUE#( ( %cid = 'cid3'
*                CourseId = '111'
*                UserId = '666') ).
*
    " Optionally handle failed updates
    IF update_reported IS NOT INITIAL.
      " Handle the failed updates, log them or raise an exception
    ENDIF.

  ENDMETHOD.

  METHOD validateStudentUser.
    READ ENTITIES OF zi_course_management IN LOCAL MODE
         ENTITY Students

         FIELDS ( CourseId UserId Assignment )
         WITH CORRESPONDING #( keys )
         " TODO: variable is assigned but never used (ABAP cleaner)
         RESULT DATA(Students)
                  " TODO: variable is assigned but never used (ABAP cleaner)
         FAILED DATA(read_failed).

    READ ENTITY zr_acourse_users
         FIELDS ( CourseId Assignment UserId )
         WITH CORRESPONDING #( keys )
         " TODO: variable is assigned but never used (ABAP cleaner)
         RESULT DATA(CourseUsers)
         " TODO: variable is assigned but never used (ABAP cleaner)
         FAILED DATA(failed_data).
  ENDMETHOD.

ENDCLASS.
