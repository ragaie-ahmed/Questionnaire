part of 'quality_standard_student_cubit.dart';

@immutable
abstract class QualityStandardStudentState {}

class QualityStandardStudentInitial extends QualityStandardStudentState {}
class QualityStandardStudentLoading extends QualityStandardStudentState {}
class QualityStandardStudentSuccess extends QualityStandardStudentState {
  final List<QualityStandard> quality;

  QualityStandardStudentSuccess({required this.quality});
}
class QualityStandardStudentError extends QualityStandardStudentState {
  final String error;

  QualityStandardStudentError({required this.error});
}
