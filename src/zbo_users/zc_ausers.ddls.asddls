@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_AUSERS
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_AUSERS
{
  key UserId,
  Name,
  Surname,
  Email,
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt
  
}
