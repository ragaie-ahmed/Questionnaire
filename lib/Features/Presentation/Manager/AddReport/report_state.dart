part of 'report_cubit.dart';

@immutable
abstract class ReportState {}

class ReportInitial extends ReportState {}
class LoadingAddReport extends ReportState {}
class SuccessAddReport extends ReportState {}
class ErrorAddReport extends ReportState {
  final String error;

  ErrorAddReport({required this.error});
}

class LoadingGetReport extends ReportState {}
class SuccessGetReport extends ReportState {
 final ReportModel reportModel;

  SuccessGetReport({required this.reportModel});
}
class ErrorGetReportModel extends ReportState {
  final String error;

  ErrorGetReportModel({required this.error});
}
