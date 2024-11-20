@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_ACOURSE_USERS
  as select from zacourse_users as CourseUsers
{
  key course_usr_id as CourseUsrId,
//  key UserId,
      user_id as UserId,
//  key Assignment,
      assignment as Assignment,
//  key CourseId,
      course_id as CourseId,
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
