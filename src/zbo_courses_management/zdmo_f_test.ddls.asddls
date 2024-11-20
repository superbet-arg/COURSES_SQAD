@EndUserText.label: 'Faculties TEST'
define abstract entity ZDMO_F_TEST
//  with parameters parameter_name : parameter_type
{ 
      CourseId         : abap.char(12);
      Assignment       : abap.char(1);
      UserId           : sysuuid_x16;
      Createdby        : abp_creation_user;
      Createdat        : tzntstmpl;
      Lastchangedby    : abp_lastchange_user;
      Lastchangedat    : abp_lastchange_tstmpl;
      Locallastchanged : abp_locinst_lastchange_tstmpl;
    
}
