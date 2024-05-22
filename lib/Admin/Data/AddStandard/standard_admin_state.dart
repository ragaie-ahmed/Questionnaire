part of 'standard_admin_cubit.dart';

@immutable
abstract class StandardAdminState {}

class StandardAdminInitial extends StandardAdminState {}
class StandardLoading extends StandardAdminState {}
class StandardSuccess extends StandardAdminState {}
class StandardError extends StandardAdminState {
  final String error;

  StandardError({required this.error});
}
