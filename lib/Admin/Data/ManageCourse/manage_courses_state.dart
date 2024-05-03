part of 'manage_courses_cubit.dart';

@immutable
abstract class ManageCoursesState {}

class ManageCoursesInitial extends ManageCoursesState {}
class LoadingManageCourse extends ManageCoursesState {}
class ErrorManageCourse extends ManageCoursesState {
  final String error;

  ErrorManageCourse({required this.error});
}
class SuccessManageCourse extends ManageCoursesState {
final  List<CoursesModel> coursesModel;

  SuccessManageCourse({required this.coursesModel});
}
class LoadingManageCourseShow extends ManageCoursesState {}
class ErrorManageCourseShow extends ManageCoursesState {
  final String error;

  ErrorManageCourseShow({required this.error});
}
class SuccessManageCourseShow extends ManageCoursesState {
  final  ShowCourseModel coursesModel;

  SuccessManageCourseShow({required this.coursesModel});
}