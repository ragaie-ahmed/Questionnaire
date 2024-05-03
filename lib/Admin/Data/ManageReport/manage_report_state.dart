part of 'manage_report_cubit.dart';

@immutable
abstract class ManageReportState {}

class ManageReportInitial extends ManageReportState {}
class ManageReportLoading extends ManageReportState {}
class ManageReportSuccess extends ManageReportState {
  final List<CoursesModel> coursesModel;

  ManageReportSuccess({required this.coursesModel});
}
class ManageReportError extends ManageReportState {
  final String error;

  ManageReportError({required this.error});
}
class ManageReportLoadingShow extends ManageReportState {}
class ManageReportSuccessShow extends ManageReportState {
  final ShowReport showReport;

  ManageReportSuccessShow ({required this.showReport});
}
class ManageReportErrorShow  extends ManageReportState {
  final String error;

  ManageReportErrorShow({required this.error});
}