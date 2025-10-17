part of 'kind_filter_cubit.dart';

@immutable
sealed class KindFilterState {}

final class KindFilterInitial extends KindFilterState {}

final class KindFilterLoading extends KindFilterState {}

final class KindFilterSuccess extends KindFilterState {
  final List<FilterModel> kindfilter;

  KindFilterSuccess({required this.kindfilter});
}

final class KindFilterFailure extends KindFilterState {
  final String errMessage;

  KindFilterFailure({required this.errMessage});
}
