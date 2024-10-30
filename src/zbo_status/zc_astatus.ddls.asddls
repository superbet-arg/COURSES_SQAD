@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_ASTATUS
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_ASTATUS
{
  key Status,
  Description,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged
  
}
