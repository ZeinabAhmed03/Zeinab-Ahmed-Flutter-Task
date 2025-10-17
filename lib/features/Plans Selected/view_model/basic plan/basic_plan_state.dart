part of 'basic_plan_cubit.dart';

@immutable
sealed class BasicPLanState {}

final class BasicPLanInitial extends BasicPLanState {}

final class BasicPLanLoading extends BasicPLanState {}

final class BasicPLanSuccess extends BasicPLanState {
  final List<PlanModel> basicPlan;

  BasicPLanSuccess({required this.basicPlan});
}

final class BasicPLanFailure extends BasicPLanState {
  final String errMessage;

  BasicPLanFailure({required this.errMessage});
}
