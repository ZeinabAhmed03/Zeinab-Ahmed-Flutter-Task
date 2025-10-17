import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Filtering/data/models/filter_model.dart';
import 'package:it_legend_task/features/Filtering/data/repos/filter_repo.dart';
import 'package:meta/meta.dart';

part 'kind_filter_state.dart';

class KindFilterCubit extends Cubit<KindFilterState> {
  KindFilterCubit() : super(KindFilterInitial());
  final FilterRepo filterRepo = FilterRepo();

  Future<void> getKindFilter() async {
    emit(KindFilterLoading());
    try {
      final kindFilters = await filterRepo.getKindFilter();
      emit(KindFilterSuccess(kindfilter: kindFilters));
    } catch (e) {
      emit(KindFilterFailure(errMessage: e.toString()));
    }
  }

  Future<void> onFilterTapped(String tableName, int offerId) async {
    try {
      await filterRepo.selectFilter(tableName, offerId);

      await getKindFilter();
    } catch (e) {
      emit(KindFilterFailure(errMessage: e.toString()));
    }
  }
}
