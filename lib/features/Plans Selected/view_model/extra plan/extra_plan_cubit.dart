import 'package:bloc/bloc.dart';
import 'package:it_legend_task/features/Plans%20Selected/data/models/plan_model.dart';
import 'package:it_legend_task/features/Plans%20Selected/data/repos/plan_repo.dart';
import 'package:meta/meta.dart';

part 'extra_plan_state.dart';

class ExtraPlanCubit extends Cubit<ExtraPlanState> {
  ExtraPlanCubit() : super(ExtraPlanInitial());
  final PlanRepo planRepo = PlanRepo();

  Future<void> getExtraPlan() async {
    emit(ExtraPlanLoading());
    try {
      final extraPlan = await planRepo.getExtraPlan();
      emit(ExtraPlanSuccess(extraPlan: extraPlan));
    } catch (e) {
      emit(ExtraPlanFailure(errMessage: e.toString()));
    }
  }
}
