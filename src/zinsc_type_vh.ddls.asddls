@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Users Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel: { dataCategory: #VALUE_HELP,
                representativeKey: 'InscriptionType',
                usageType.sizeCategory: #S,
                usageType.dataClass: #ORGANIZATIONAL,
                usageType.serviceQuality: #A,
                supportedCapabilities: [#VALUE_HELP_PROVIDER, #SEARCHABLE_ENTITY],
                modelingPattern: #VALUE_HELP_PROVIDER
}
@Search.searchable: true
define view entity ZINSC_TYPE_VH
  as select from zainsc_type as InscriptionType
{

      @Search.defaultSearchElement: true
  key inscription_type as InscriptionType,
      description      as Description

}
