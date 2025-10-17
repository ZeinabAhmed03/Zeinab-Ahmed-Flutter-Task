import 'package:bloc/bloc.dart';
import 'package:it_legend_task/features/Plans%20Selected/data/models/plan_model.dart';
import 'package:it_legend_task/features/Plans%20Selected/data/repos/plan_repo.dart';
import 'package:meta/meta.dart';

part 'plus_super_state.dart';

class PlusSuperCubit extends Cubit<PlusSuperState> {
  PlusSuperCubit() : super(PlusSuperInitial());
  final PlanRepo planRepo = PlanRepo();

  Future<void> getPlusSuperPlan() async {
    emit(PlusSuperLoading());
    try {
      final pLusSuperPlan = await planRepo.getPlusSuperPlan();
      emit(PlusSuperSuccess(pLusSuperPlan: pLusSuperPlan));
    } catch (e) {
      emit(PlusSuperFailure(errMessage: e.toString()));
    }
  }
}
