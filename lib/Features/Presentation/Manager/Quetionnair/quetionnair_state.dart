part of 'quetionnair_cubit.dart';

@immutable
abstract class QuetionnairState {}

class QuetionnairInitial extends QuetionnairState {}
class QuestionnaireLoading extends QuetionnairState {}
class QuestionnaireSuccess extends QuetionnairState {}
class QuestionnaireError extends QuetionnairState {
  final String error;

  QuestionnaireError({required this.error});
}
