part of 'qyality_standard_cubit.dart';

@immutable
abstract class QyalityStandardState {}

class QyalityStandardInitial extends QyalityStandardState {}
class SuccessChangeImage extends QyalityStandardState {}
class StandardLoading extends QyalityStandardState {}
class StandardSuccess extends QyalityStandardState {}
class StandardError extends QyalityStandardState {
  final String error;

  StandardError({required this.error});
}
