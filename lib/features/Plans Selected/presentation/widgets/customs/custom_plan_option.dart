import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Plans%20Selected/data/models/plan_model.dart';

class CustomPlanOption extends StatelessWidget {
  const CustomPlanOption({super.key, required this.planModel});
  final PlanModel planModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(planModel.image, height: 24, width: 24),

          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  planModel.title,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff090F1F),
                    fontWeight: FontWeight.w500,
                  ),
                ),

                if (planModel.subtitle != null)
                  Text(
                    planModel.subtitle!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffFF4144),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              ],
            ),
          ),

          SizedBox(width: 12),
        ],
      ),
    );
  }
}
