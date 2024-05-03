part of 'courses_cubit.dart';

@immutable
abstract class CoursesState {}

class CoursesInitial extends CoursesState {}
class SuccessAddCourses extends CoursesState {}
class SuccessGetCourses extends CoursesState {
  final CoursesModel coursesModel;

  SuccessGetCourses({required this.coursesModel});
}
class ErrorAddCourses extends CoursesState {
  final String error;

  ErrorAddCourses({required this.error});

}
class ErrorGetCourses extends CoursesState {
  final String error;

  ErrorGetCourses({required this.error});

}
