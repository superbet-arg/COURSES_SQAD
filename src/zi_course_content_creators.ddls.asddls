@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Course Students'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_COURSE_CONTENT_CREATORS
  as select from ZI_COURSE_USERS_ASSIGMENT 
  association to parent ZI_COURSE_MANAGEMENT as _CourseManagement on _CourseManagement.CourseId = $projection.CourseId
{
  key CourseUsrId,
//  key UserId,
      UserId,
//  key Assignment,
      Assignment,
//  key CourseId,
      CourseId,
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
Assignment = 'C'
