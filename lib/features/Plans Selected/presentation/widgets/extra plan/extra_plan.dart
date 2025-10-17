import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/customs/custom_container.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/customs/plan_header.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/extra%20plan/extra_plan_bloc_builder.dart';

class ExtraPlan extends StatelessWidget {
  const ExtraPlan({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xffE5E5E5)),
        ),
        child: Column(
          children: [
            SizedBox(height: 12),
            PlanHeader(plan: 'أكسترا'),
            Divider(indent: 15, endIndent: 15),
            Row(
              children: [
                Expanded(flex: 3, child: ExtraPlanBlocBuilder()),
                Expanded(flex: 1, child: CustomContainer(body: '7')),
              ],
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
