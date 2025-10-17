import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/customs/custom_plan_option.dart';
import 'package:it_legend_task/features/Plans%20Selected/view_model/extra%20plan/extra_plan_cubit.dart';

class ExtraPlanBlocBuilder extends StatelessWidget {
  const ExtraPlanBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExtraPlanCubit, ExtraPlanState>(
      builder: (context, state) {
        if (state is ExtraPlanLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is ExtraPlanSuccess) {
          log('extra plan length${state.extraPlan.length}');
          return ListView.builder(
            padding: EdgeInsets.all(0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.extraPlan.length,
            itemBuilder: (context, index) {
              return CustomPlanOption(planModel: state.extraPlan[index]);
            },
          );
        } else if (state is ExtraPlanFailure) {
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
