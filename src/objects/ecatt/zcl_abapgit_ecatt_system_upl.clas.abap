CLASS zcl_abapgit_ecatt_system_upl DEFINITION
  PUBLIC
  INHERITING FROM cl_apl_ecatt_systems_upload
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      z_set_stream_for_upload
        IMPORTING
          im_xml TYPE xstring.

  PROTECTED SECTION.
    METHODS:
      upload_data_from_stream REDEFINITION.

  PRIVATE SECTION.
    DATA: mv_external_xml TYPE xstring.

ENDCLASS.



CLASS zcl_abapgit_ecatt_system_upl IMPLEMENTATION.

  METHOD upload_data_from_stream.

    " Downport
    template_over_all = zcl_abapgit_ecatt_helper=>upload_data_from_stream( mv_external_xml ).

  ENDMETHOD.


  METHOD z_set_stream_for_upload.

    " downport from CL_APL_ECATT_SYSTEMS_UPLOAD SET_STREAM_FOR_UPLOAD
    mv_external_xml = im_xml.

  ENDMETHOD.

ENDCLASS.
