import 'package:flutter/material.dart';
import 'package:it_legend_task/core/widgets/custom_button.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/filter%20sections/category_section.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/filtering_header.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/filter%20sections/kind_section.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/filter%20sections/monthly_installments.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/filter%20sections/number_of_rooms.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/filter%20sections/payment_method_section.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/filter%20sections/price_section.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/filter%20sections/property_condition_section.dart';

class FilterViewBody extends StatelessWidget {
  const FilterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FilteringHeader(),
          CategorySection(),
          MonthlyInstallments(),
          KindSection(),
          NumberOfRooms(),
          PriceSection(),
          PaymentMethodSection(),
          PropertyConditionSection(),
          SizedBox(height: 80),
          CustomButton(
            buttonBody: Text(
              'شاهد 10,000+ نتائج',

              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
