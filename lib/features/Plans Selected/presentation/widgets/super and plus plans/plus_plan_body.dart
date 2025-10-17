import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/customs/custom_container.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/super%20and%20plus%20plans/pLus_and_super_plans_bloc_builder.dart';

class PlusPlanBody extends StatelessWidget {
  const PlusPlanBody({super.key, required this.body});
  final String body;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: PLusAndSuperPlansBlocBuilder()),
        Expanded(flex: 1, child: CustomContainer(body: body)),
      ],
    );
  }
}
