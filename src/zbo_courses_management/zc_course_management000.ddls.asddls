@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: 'Course Management'
}
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZC_COURSE_MANAGEMENT000
  provider contract transactional_query
  as projection on ZI_COURSE_MANAGEMENT
{
      @EndUserText: {
        quickInfo: '16 Byte UUID in 16 Bytes (Raw Format)'
      }
  key CourseId,
      CourseName,
      Description,
      @EndUserText: {
        quickInfo: 'Area'
      }
      @Consumption.valueHelpDefinition : [ { entity : { name : 'ZAREA_VH', element : 'Area' } } ]
      Area,
      AreaDescription,
      @EndUserText: {
        quickInfo: 'Course Category'
      }
      @Consumption.valueHelpDefinition : [ { entity : { name : 'ZCOURSE_CAT_VH', element : 'CourseCategory' } } ]
      CourseCategory,
      @Consumption.valueHelpDefinition : [ { entity : { name : 'ZCOURSE_CAT_VH', element : 'CourseCategory' } } ]
      CourseCategoryDescription,
      @Consumption.valueHelpDefinition : [ { entity : { name : 'ZDIFFICULTY_VH', element : 'Difficulty' } } ]
      Difficulty,
      DifficultyDescription,
      @Consumption.valueHelpDefinition : [ { entity : { name : 'ZINSC_TYPE_VH', element : 'InscriptionType' } } ]
      InscriptionType,
      InscriptionTypeDescription,
      Tracking,
      State,
      Requeriments,
      StartDate,
      EndDate,
      @EndUserText: {
        quickInfo: 'Created By User'
      }
      @Semantics: {
        user.createdBy: true
      }
      Createdby,
      @EndUserText: {
        quickInfo: 'UTC time stamp in long form (YYYYMMDDhhmmss,mmmuuun)'
      }
      Createdat,
      @EndUserText: {
        quickInfo: 'Last Changed By User'
      }
      @Semantics: {
        user.lastChangedBy: true
      }
      Lastchangedby,
      @EndUserText: {
        quickInfo: 'Last Change Date Time'
      }
      @Semantics: {
        systemDateTime.lastChangedAt: true
      }
      Lastchangedat,
      @EndUserText: {
        quickInfo: 'Local Instance Last Change Date Time'
      }
      @Semantics: {
        systemDateTime.localInstanceLastChangedAt: true
      }
      Locallastchanged,
      _Students        : redirected to composition child ZC_COURSE_STUDENTS000,
      __ContentCreator : redirected to composition child ZC_COURSE_CONTENT_CREATORS000,
      __Faculties      : redirected to composition child ZC_COURSE_FACULTIES000

}
