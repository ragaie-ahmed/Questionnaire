part of 'qyality_standard_cubit.dart';

@immutable
abstract class QyalityStandardStateAdmin {}

class QyalityStandardInitial extends QyalityStandardStateAdmin {}
class SuccessChangeImage extends QyalityStandardStateAdmin {}
class StandardLoading extends QyalityStandardStateAdmin {}
class StandardSuccess extends QyalityStandardStateAdmin {}
class StandardAdminSuccess extends QyalityStandardStateAdmin {}
class QualityStandardAdminSuccess extends QyalityStandardStateAdmin {
  final List<QualityStandard> quality;

  QualityStandardAdminSuccess({required this.quality});
}

class QualityStandardAdminLoading extends QyalityStandardStateAdmin {}
class StandardAdminLoading extends QyalityStandardStateAdmin {}
class StandardError extends QyalityStandardStateAdmin {
  final String error;

  StandardError({required this.error});
}
class QualityStandardAdminError extends QyalityStandardStateAdmin {
  final String error;

  QualityStandardAdminError({required this.error});
}
class StandardAdminError extends QyalityStandardStateAdmin {
  final String error;

  StandardAdminError({required this.error});
}
