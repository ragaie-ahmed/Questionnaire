part of 'report_data_cubit.dart';

@immutable
abstract class ReportDataState {}

class ReportDataInitial extends ReportDataState {}
class LoadingReportAi extends ReportDataState {}
class SuccessReportAi extends ReportDataState {}
class ErrorReportAi extends ReportDataState {
  final String error;

  ErrorReportAi({required this.error});
}

