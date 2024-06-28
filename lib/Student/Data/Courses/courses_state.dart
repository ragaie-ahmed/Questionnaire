part of 'courses_cubit.dart';

@immutable
abstract class CoursesStateStudent {}

class CoursesInitial extends CoursesStateStudent {}
class LoadingManageCourseStudent extends CoursesStateStudent {}
class LoadingManageCourseShowStudent extends CoursesStateStudent {}
class ErrorManageCourseStudent extends CoursesStateStudent {
  final String error;

  ErrorManageCourseStudent({required this.error});
}
class ErrorManageCourseShowStudent extends CoursesStateStudent {
  final String error;

  ErrorManageCourseShowStudent({required this.error});
}
class SuccessManageCourseStudent extends CoursesStateStudent {
  final  CourseModeStudent coursesModel;

  SuccessManageCourseStudent({required this.coursesModel});

}
class SuccessManageCourseShowStudent extends CoursesStateStudent {
  final  CourseStudentModel coursesModel;

  SuccessManageCourseShowStudent({required this.coursesModel});

}
