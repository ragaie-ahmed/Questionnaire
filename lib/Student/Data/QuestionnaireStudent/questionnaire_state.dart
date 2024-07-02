part of 'questionnaire_cubit.dart';

@immutable
abstract class QuestionnaireState {}

class QuestionnaireInitial extends QuestionnaireState {}
class QuestionnaireStudentLoading extends QuestionnaireState {}
class SuccessSendQuestion extends QuestionnaireState {}
class LoadingSendQuestion extends QuestionnaireState {}
class ErrorSendQuestion extends QuestionnaireState {
  final String error;

  ErrorSendQuestion({required this.error});
}
class QuestionnaireStudentSuccess extends QuestionnaireState {

}
class QuestionnaireStudentError extends QuestionnaireState {
  final String error;

  QuestionnaireStudentError({required this.error});
}

