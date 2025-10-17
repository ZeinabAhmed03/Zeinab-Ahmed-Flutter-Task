part of 'extra_plan_cubit.dart';

@immutable
sealed class ExtraPlanState {}

final class ExtraPlanInitial extends ExtraPlanState {}

final class ExtraPlanLoading extends ExtraPlanState {}

final class ExtraPlanSuccess extends ExtraPlanState {
  final List<PlanModel> extraPlan;

  ExtraPlanSuccess({required this.extraPlan});
}

final class ExtraPlanFailure extends ExtraPlanState {
  final String errMessage;

  ExtraPlanFailure({required this.errMessage});
}
