@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Users Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel: { dataCategory: #VALUE_HELP,
                representativeKey: 'Difficulty',
                usageType.sizeCategory: #S,
                usageType.dataClass: #ORGANIZATIONAL,
                usageType.serviceQuality: #A,
                supportedCapabilities: [#VALUE_HELP_PROVIDER, #SEARCHABLE_ENTITY],
                modelingPattern: #VALUE_HELP_PROVIDER
}
@Search.searchable: true
define view entity ZDIFFICULTY_VH
  as select from zadifficulty as Difficulty
{

      @Search.defaultSearchElement: true
  key difficulty  as Difficulty,
      description as Description
      
}
