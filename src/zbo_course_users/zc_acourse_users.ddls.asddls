@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_ACOURSE_USERS
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_ACOURSE_USERS
{
  key UserId,
  key Assignment,
  key CourseId,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged
  
}
