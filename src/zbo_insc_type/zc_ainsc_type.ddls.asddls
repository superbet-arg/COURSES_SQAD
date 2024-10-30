@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_AINSC_TYPE
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_AINSC_TYPE
{
  key InscriptionType,
  Description,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged
  
}
