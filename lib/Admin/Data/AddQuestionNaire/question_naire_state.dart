
abstract class QuetionnairAdminState {}

class QuetionnairAdminInitial extends QuetionnairAdminState {}
class QuestionnaireLoadingAdmin extends QuetionnairAdminState {}
class QuestionnaireSuccessAdmin extends QuetionnairAdminState {}
class QuestionnaireErrorAdmin extends QuetionnairAdminState {
  final String error;

  QuestionnaireErrorAdmin({required this.error});
}
