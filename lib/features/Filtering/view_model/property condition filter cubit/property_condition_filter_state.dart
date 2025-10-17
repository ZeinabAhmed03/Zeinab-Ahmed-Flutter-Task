part of 'property_condition_filter_cubit.dart';

@immutable
sealed class PropertyConditionFilterState {}

final class PropertyConditionFilterInitial
    extends PropertyConditionFilterState {}

final class PropertyConditionsFilterLoading
    extends PropertyConditionFilterState {}

final class PropertyConditionsFilterSuccess
    extends PropertyConditionFilterState {
  final List<FilterModel> propertyConditionsFilter;

  PropertyConditionsFilterSuccess({required this.propertyConditionsFilter});
}

final class PropertyConditionsFilterFailure
    extends PropertyConditionFilterState {
  final String errMessage;

  PropertyConditionsFilterFailure({required this.errMessage});
}
