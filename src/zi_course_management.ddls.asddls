@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Course Management'
define root view entity ZI_COURSE_MANAGEMENT
  as select from ZR_ACOURSES as Courses
  composition [1..*] of ZI_COURSE_CONTENT_CREATORS as __ContentCreator
  composition [1..*] of ZI_COURSE_FACULTIES        as __Faculties
  composition [1..*] of ZI_COURSE_STUDENTS         as _Students
  association [1..1] to ZR_AAREA                   as _Area            on _Area.Area = $projection.Area
  association [1..1] to ZR_ACOURSE_CAT             as _CourseCategory  on _CourseCategory.CourseCategory = $projection.CourseCategory
  association [1..1] to ZR_ADIFFICULTY             as _Difficulty      on _Difficulty.Difficulty = $projection.Difficulty
  association [1..1] to ZR_AINSC_TYPE              as _InscriptionType on _InscriptionType.InscriptionType = $projection.InscriptionType
{

  key CourseId,
      CourseName,
      Description,
      Area,
      _Area.Description            as AreaDescription,
      CourseCategory,
      _CourseCategory.Description  as CourseCategoryDescription,
      Difficulty,
      _Difficulty.Description      as DifficultyDescription,
      InscriptionType,
      _InscriptionType.Description as InscriptionTypeDescription,
      Tracking,
      State,
      Requeriments,
      StartDate,
      EndDate,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      Locallastchanged,
      __ContentCreator,
      __Faculties,
      _Students
}
