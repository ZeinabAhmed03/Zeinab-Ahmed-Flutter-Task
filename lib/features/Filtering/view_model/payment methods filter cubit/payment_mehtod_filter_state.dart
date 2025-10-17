part of 'payment_method_filter_cubit.dart';

@immutable
sealed class PaymentMethodsFilterState {}

final class PaymentMethodsFilterInitial extends PaymentMethodsFilterState {}

final class PaymentMethodsFilterLoading extends PaymentMethodsFilterState {}

final class PaymentMethodsFilterSuccess extends PaymentMethodsFilterState {
  final List<FilterModel> paymentMethodsFilter;

  PaymentMethodsFilterSuccess({required this.paymentMethodsFilter});
}

final class PaymentMethodsFilterFailure extends PaymentMethodsFilterState {
  final String errMessage;

  PaymentMethodsFilterFailure({required this.errMessage});
}
