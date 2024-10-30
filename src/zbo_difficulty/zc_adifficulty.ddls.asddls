@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_ADIFFICULTY
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_ADIFFICULTY
{
  key Difficulty,
  Description,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged
  
}
