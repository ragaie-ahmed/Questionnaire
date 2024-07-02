part of 'ilos_cubit.dart';

@immutable
abstract class IlosState {}

class IlosInitial extends IlosState {}
class IlosLoading extends IlosState {}
class IlosSuccess extends IlosState {}
class LoadingIlos extends IlosState {}
class LoadingManageCourseShowIlos extends IlosState {}
class SuccessIlos extends IlosState {
 final List<IlosModel> getIlos;

  SuccessIlos({required this.getIlos});
}
class SuccessManageCourseShowIlos extends IlosState {
 final Ilos getIlos;

 SuccessManageCourseShowIlos({required this.getIlos});
}
class IlosError extends IlosState {
  final String error;

  IlosError({required this.error});
}
class ErrorIlos extends IlosState {
  final String error;

  ErrorIlos({required this.error});
}
class ErrorManageCourseShowIlos extends IlosState {
  final String error;

  ErrorManageCourseShowIlos({required this.error});
}
