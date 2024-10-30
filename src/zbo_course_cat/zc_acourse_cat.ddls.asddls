@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_ACOURSE_CAT
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_ACOURSE_CAT
{
  key CourseCategory,
  Description,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged
  
}
