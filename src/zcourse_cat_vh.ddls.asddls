@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Users Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel: { dataCategory: #VALUE_HELP,
                representativeKey: 'CourseCategory',
                usageType.sizeCategory: #S,
                usageType.dataClass: #ORGANIZATIONAL,
                usageType.serviceQuality: #A,
                supportedCapabilities: [#VALUE_HELP_PROVIDER, #SEARCHABLE_ENTITY],
                modelingPattern: #VALUE_HELP_PROVIDER
}
@Search.searchable: true
define root view entity ZCOURSE_CAT_VH
  as select from zacourse_cat as CourseCategory
{

      @Search.defaultSearchElement: true
  key course_category as CourseCategory,
      description     as Descrption

}
