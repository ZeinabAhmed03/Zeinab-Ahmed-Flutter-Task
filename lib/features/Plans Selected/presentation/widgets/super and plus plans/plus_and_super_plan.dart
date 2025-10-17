import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/customs/plan_header.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/super%20and%20plus%20plans/plus_plan_body.dart';

class PlusAndSuperPlan extends StatelessWidget {
  const PlusAndSuperPlan({
    super.key,
    required this.body,
    required this.plan,
    required this.badgeImage,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });
  final String body;
  final String plan;
  final String badgeImage;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: right,
            top: top,
            left: left,
            bottom: bottom,
            child: Image.asset(badgeImage, height: 31, width: 135),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0xffE5E5E5)),
            ),
            child: Column(
              children: [
                SizedBox(height: 12),
                PlanHeader(plan: plan),

                Divider(indent: 15, endIndent: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: PlusPlanBody(body: body),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
