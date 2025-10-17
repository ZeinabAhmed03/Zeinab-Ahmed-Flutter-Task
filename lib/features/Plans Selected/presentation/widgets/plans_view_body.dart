import 'package:flutter/material.dart';
import 'package:it_legend_task/core/widgets/custom_button.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/basic%20plan/basic_plan.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/extra%20plan/extra_plan.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/customs/plans_header.dart';
import 'package:it_legend_task/features/Plans%20Selected/presentation/widgets/super%20and%20plus%20plans/plus_and_super_plan.dart';

class PlansViewBody extends StatelessWidget {
  const PlansViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PlansHeader(),
          SizedBox(height: 24),
          BasicPlan(),
          SizedBox(height: 24),

          ExtraPlan(),
          SizedBox(height: 24),

          PlusAndSuperPlan(
            body: '18',
            plan: 'بلس',
            badgeImage: 'assets/images/Plan Offer Badge.png',
            right: 1,
            top: -20,
          ),
          SizedBox(height: 24),

          PlusAndSuperPlan(
            body: '24',
            plan: 'سوبر',
            badgeImage: 'assets/images/Plan Offer Badge2.png',
            right: -18,
            top: -20,
          ),
          SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF6F7F7),
                border: Border.all(color: Color(0xffE5E5E5)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'باقات مخصصة لك',
                    style: TextStyle(
                      color: Color(0xff090F1F),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'تواصل معنا لأختيار الباقة المناسبة لك',
                    style: TextStyle(
                      color: Color(0xff090F1F),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'فريق المبيعات',
                    style: TextStyle(
                      color: Color(0xff0079FE),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 200),
          Divider(color: Color(0xffE5E5E5)),
          CustomButton(
            buttonBody: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'التالى',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(Icons.arrow_forward, color: Color(0xffFFFFFF), size: 24),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
