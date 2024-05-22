part of 'quality_standard_cubit.dart';

@immutable
abstract class QualityStandardState {}

class QualityStandardInitial extends QualityStandardState {}
class QualityStandardLoading extends QualityStandardState {}
class QualityStandardSuccess extends QualityStandardState {
  final List<QualityStandard> qualityStandard;

  QualityStandardSuccess({required this.qualityStandard});
}

class QualityStandardError extends QualityStandardState {
  final String error;

  QualityStandardError({required this.error});
}
