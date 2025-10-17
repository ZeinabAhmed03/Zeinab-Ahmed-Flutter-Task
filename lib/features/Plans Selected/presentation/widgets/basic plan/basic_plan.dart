import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/customs/custom_plan_option.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/customs/plan_header.dart';
import 'package:it_legend_task/features/Plans%20Selected/view_model/basic%20plan/basic_plan_cubit.dart';

class BasicPlan extends StatelessWidget {
  const BasicPlan({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        //     height: 135,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xffE5E5E5)),
        ),
        child: Column(
          children: [
            SizedBox(height: 12),
            PlanHeader(plan: 'أساسية'),

            Divider(indent: 15, endIndent: 15),

            BlocBuilder<BasicPLanCubit, BasicPLanState>(
              builder: (context, state) {
                if (state is BasicPLanLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is BasicPLanSuccess) {
                  return ListView.builder(
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: state.basicPlan.length,
                    itemBuilder: (context, index) =>
                        CustomPlanOption(planModel: state.basicPlan[index]),
                  );
                } else if (state is BasicPLanFailure) {
                  return Center(child: Text(state.errMessage));
                } else {
                  return Center(
                    child: Text(
                      'There was a problem loding data, please try later',
                    ),
                  );
                }
              },
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
