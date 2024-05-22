part of 'add_question_naire_cubit.dart';

@immutable
abstract class AddQuestionNaireState {}

class AddQuestionNaireInitial extends AddQuestionNaireState {}
class AddQuestionNaireLoading extends AddQuestionNaireState {}
class AddQuestionNaireSuccess extends AddQuestionNaireState {}
class SuccessChange extends AddQuestionNaireState {}
class SuccessGetPercentage extends AddQuestionNaireState {}
class AddAnswerLoading extends AddQuestionNaireState {}
class AddAnswerSuccess extends AddQuestionNaireState {}
class LoadingGetPercentage extends AddQuestionNaireState {}
class ErrorGetPercentage extends AddQuestionNaireState {
  final String error;

  ErrorGetPercentage({required this.error});
}
class AddAnswerError extends AddQuestionNaireState {
  final String error;

  AddAnswerError({required this.error});
}
class AddQuestionNaireError extends AddQuestionNaireState {
  final String error;

  AddQuestionNaireError({required this.error});

}
