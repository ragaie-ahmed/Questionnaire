part of 'log_in_cubit.dart';

@immutable
abstract class LogInState {}

class LogInInitial extends LogInState {}
class LoadingLogIn extends LogInState {}
class SuccessLogIn extends LogInState {}
class ErrorLogIn extends LogInState {
  final String error;

  ErrorLogIn({required this.error});
}
