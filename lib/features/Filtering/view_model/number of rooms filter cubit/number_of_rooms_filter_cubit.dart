import 'package:bloc/bloc.dart';
import 'package:it_legend_task/features/Filtering/data/models/filter_model.dart';
import 'package:it_legend_task/features/Filtering/data/repos/filter_repo.dart';
import 'package:meta/meta.dart';

part 'number_of_rooms_filter_state.dart';

class NumberOfRoomsFilterCubit extends Cubit<NumberOfRoomsFilterState> {
  NumberOfRoomsFilterCubit() : super(NumberOfRoomsFilterInitial());
  final FilterRepo filterRepo = FilterRepo();

  Future<void> getNumberOfRoomsFilter() async {
    emit(NumberOfRoomsFilterLoading());
    try {
      final numberOfRooms = await filterRepo.getNumberOfRooms();
      emit(NumberOfRoomsFilterSuccess(numberOFRoomsFilter: numberOfRooms));
    } catch (e) {
      emit(NumberOfRoomsFilterFailure(errMessage: e.toString()));
    }
  }

  Future<void> onFilterTapped(String tableName, int offerId) async {
    try {
      await filterRepo.selectFilter(tableName, offerId);

      await getNumberOfRoomsFilter();
    } catch (e) {
      emit(NumberOfRoomsFilterFailure(errMessage: e.toString()));
    }
  }
}
