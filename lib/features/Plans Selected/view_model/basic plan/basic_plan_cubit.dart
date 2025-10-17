import 'package:bloc/bloc.dart';
import 'package:it_legend_task/features/Plans%20Selected/data/models/plan_model.dart';
import 'package:it_legend_task/features/Plans%20Selected/data/repos/plan_repo.dart';
import 'package:meta/meta.dart';

part 'basic_plan_state.dart';

class BasicPLanCubit extends Cubit<BasicPLanState> {
  BasicPLanCubit() : super(BasicPLanInitial());
  final PlanRepo planRepo = PlanRepo();

  Future<void> getBasicPlan() async {
    emit(BasicPLanLoading());
    try {
      final basicPlan = await planRepo.getBasicPlan();
      emit(BasicPLanSuccess(basicPlan: basicPlan));
    } catch (e) {
      emit(BasicPLanFailure(errMessage: e.toString()));
    }
  }
}
