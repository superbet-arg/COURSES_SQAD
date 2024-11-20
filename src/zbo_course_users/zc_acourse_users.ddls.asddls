@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_ACOURSE_USERS
  provider contract transactional_query
  as projection on ZR_ACOURSE_USERS
{
  key CourseUsrId,
//  key UserId,
      UserId,
//  key Assignment,
      Assignment,
//  key CourseId,
      CourseId,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged
  
}
