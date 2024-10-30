@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Users Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel: { dataCategory: #VALUE_HELP,
                representativeKey: 'UserId',
                usageType.sizeCategory: #S,
                usageType.dataClass: #ORGANIZATIONAL,
                usageType.serviceQuality: #A,
                supportedCapabilities: [#VALUE_HELP_PROVIDER, #SEARCHABLE_ENTITY],
                modelingPattern: #VALUE_HELP_PROVIDER
}
@Search.searchable: true
define root view entity ZUSERS_VH
  as select from zausers as Users
{

      @Search.defaultSearchElement: true
  key user_id as UserId,
      name    as Name,
      surname as Surname

}
