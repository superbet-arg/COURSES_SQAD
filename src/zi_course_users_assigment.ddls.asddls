@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Course Users Assignment'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_COURSE_USERS_ASSIGMENT
  as select from ZR_ACOURSE_USERS
  association [1..1] to ZR_AUSERS      as _Users     on _Users.UserId = $projection.UserId
  association [1..1] to ZR_AASSIGNMENT as _Assigment on _Assigment.Assignment = $projection.Assignment
{
  key CourseUsrId,
//  key UserId,
      UserId,
//  key Assignment,
      Assignment,
//  key CourseId,
      CourseId,
      Createdby,       
      Createdat,
      Lastchangedby,
      Lastchangedat,
      Locallastchanged,
      _Users.Name,
      _Users.Surname,
      _Users.Email,
      _Assigment.Description
}
