import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/customs/custom_plan_option.dart';
import 'package:it_legend_task/features/Plans%20Selected/view_model/plus%20&%20super%20plan/plus_super_cubit.dart';

class PLusAndSuperPlansBlocBuilder extends StatelessWidget {
  const PLusAndSuperPlansBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlusSuperCubit, PlusSuperState>(
      builder: (context, state) {
        if (state is PlusSuperLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is PlusSuperSuccess) {
          log('extra plan length${state.pLusSuperPlan.length}');
          return ListView.builder(
            padding: EdgeInsets.all(0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.pLusSuperPlan.length,
            itemBuilder: (context, index) {
              return CustomPlanOption(planModel: state.pLusSuperPlan[index]);
            },
          );
        } else if (state is PlusSuperFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return Center(
            child: Text('There was a problem loading data, please try later'),
          );
        }
      },
    );
  }
}
