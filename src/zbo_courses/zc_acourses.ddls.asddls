@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_ACOURSES
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_ACOURSES
{
  key CourseId,
  CourseName,
  Description,
  Area,
  CourseCategory,
  Difficulty,
  InscriptionType,
  Tracking,
  State,
  Requeriments,
  StartDate,
  EndDate,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged
  
}
