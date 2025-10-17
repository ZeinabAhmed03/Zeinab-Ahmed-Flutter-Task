part of 'number_of_rooms_filter_cubit.dart';

@immutable
sealed class NumberOfRoomsFilterState {}

final class NumberOfRoomsFilterInitial extends NumberOfRoomsFilterState {}

final class NumberOfRoomsFilterLoading extends NumberOfRoomsFilterState {}

final class NumberOfRoomsFilterSuccess extends NumberOfRoomsFilterState {
  final List<FilterModel> numberOFRoomsFilter;

  NumberOfRoomsFilterSuccess({required this.numberOFRoomsFilter});
}

final class NumberOfRoomsFilterFailure extends NumberOfRoomsFilterState {
  final String errMessage;

  NumberOfRoomsFilterFailure({required this.errMessage});
}
