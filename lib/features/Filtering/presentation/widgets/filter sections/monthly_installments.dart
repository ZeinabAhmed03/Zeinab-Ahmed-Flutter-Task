import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/customs/custom_text_field_sections.dart';

class MonthlyInstallments extends StatelessWidget {
  const MonthlyInstallments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: CustomTextFieldSections(sectionName: 'الأقساط الشهرية'),
    );
  }
}
