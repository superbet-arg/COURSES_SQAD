@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: 'Course Students'
}
@ObjectModel: {
  usageType.dataClass: #MIXED,
  usageType.serviceQuality: #X,
  usageType.sizeCategory: #S
}
@AccessControl.authorizationCheck: #CHECK
define view entity ZC_COURSE_STUDENTS000
  as projection on ZI_COURSE_STUDENTS
{
      @EndUserText: {
        quickInfo: '16 Byte UUID in 16 Bytes (Raw Format)'
      }
  key CourseId,
      @Consumption.valueHelpDefinition : [ { entity : { name : 'ZUSERS_VH', element : 'UserId' } } ]
  key UserId,
  key Assignment,
      Name,
      Surname,
      Email,
      Description,
      @EndUserText: {
        quickInfo: 'Created By User'
      }
      Createdby,
      @EndUserText: {
        quickInfo: 'UTC time stamp in long form (YYYYMMDDhhmmss,mmmuuun)'
      }
      Createdat,
      @EndUserText: {
        quickInfo: 'Last Changed By User'
      }
      Lastchangedby,
      @EndUserText: {
        quickInfo: 'Last Change Date Time'
      }
      Lastchangedat,
      @EndUserText: {
        quickInfo: 'Local Instance Last Change Date Time'
      }
      Locallastchanged,
      _CourseManagement : redirected to parent ZC_COURSE_MANAGEMENT000

} // where Assignment = 'S'
