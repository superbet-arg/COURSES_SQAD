@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Course Students'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_COURSE_STUDENTS
  as select from ZI_COURSE_USERS_ASSIGMENT
  association to parent ZI_COURSE_MANAGEMENT as _CourseManagement on _CourseManagement.CourseId = $projection.CourseId
{
  key CourseId,
  key UserId,
  key Assignment,
      Name,
      Surname,
      Email,
      Description,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      Locallastchanged,
      _CourseManagement
}
where
  Assignment = 'S'
