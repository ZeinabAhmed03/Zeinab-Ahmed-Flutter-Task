import 'package:bloc/bloc.dart';
import 'package:it_legend_task/features/Filtering/data/models/filter_model.dart';
import 'package:it_legend_task/features/Filtering/data/repos/filter_repo.dart';
import 'package:meta/meta.dart';

part 'property_condition_filter_state.dart';

class PropertyConditionFilterCubit extends Cubit<PropertyConditionFilterState> {
  PropertyConditionFilterCubit() : super(PropertyConditionFilterInitial());

  final FilterRepo filterRepo = FilterRepo();
  Future<void> getPropertyConditionsFilter() async {
    emit(PropertyConditionsFilterLoading());
    try {
      final propertyConditions = await filterRepo.getpropertyConditions();
      emit(
        PropertyConditionsFilterSuccess(
          propertyConditionsFilter: propertyConditions,
        ),
      );
    } catch (e) {
      emit(PropertyConditionsFilterFailure(errMessage: e.toString()));
    }
  }

  Future<void> onFilterTapped(String tableName, int offerId) async {
    try {
      await filterRepo.selectFilter(tableName, offerId);

      await getPropertyConditionsFilter();
    } catch (e) {
      emit(PropertyConditionsFilterFailure(errMessage: e.toString()));
    }
  }
}
