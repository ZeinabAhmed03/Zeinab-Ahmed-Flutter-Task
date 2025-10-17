part of 'plus_super_cubit.dart';

@immutable
sealed class PlusSuperState {}

final class PlusSuperInitial extends PlusSuperState {}

final class PlusSuperLoading extends PlusSuperState {}

final class PlusSuperSuccess extends PlusSuperState {
  final List<PlanModel> pLusSuperPlan;

  PlusSuperSuccess({required this.pLusSuperPlan});
}

final class PlusSuperFailure extends PlusSuperState {
  final String errMessage;

  PlusSuperFailure({required this.errMessage});
}
