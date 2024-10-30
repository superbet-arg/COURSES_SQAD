@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_AASSIGNMENT
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_AASSIGNMENT
{
  key Assignment,
  Description,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged
  
}
