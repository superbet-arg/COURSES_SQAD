@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_ACOURSES
  as select from ZACOURSES as Courses
{
  key course_id as CourseId,
  course_name as CourseName,
  description as Description,
  area as Area,
  course_category as CourseCategory,
  difficulty as Difficulty,
  inscription_type as InscriptionType,
  tracking as Tracking,
  state as State,
  requeriments as Requeriments,
  start_date as StartDate,
  end_date as EndDate,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  createdat as Createdat,
  @Semantics.user.lastChangedBy: true
  lastchangedby as Lastchangedby,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchangedat as Lastchangedat,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchanged as Locallastchanged
  
}
