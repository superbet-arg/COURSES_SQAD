@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Area Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel: { dataCategory: #VALUE_HELP,
                representativeKey: 'Area',
                usageType.sizeCategory: #S,
                usageType.dataClass: #ORGANIZATIONAL,
                usageType.serviceQuality: #A,
                supportedCapabilities: [#VALUE_HELP_PROVIDER, #SEARCHABLE_ENTITY],
                modelingPattern: #VALUE_HELP_PROVIDER
}
@Search.searchable: true
define view entity ZAREA_VH
  as select from zaarea
{
      @Search.defaultSearchElement: true
  key area        as Area,
      description as Description

}
