import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/customs/custom_text_field_sections.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),

      child: CustomTextFieldSections(
        sectionName: 'السعر',
        hintText1: 'أقل سعر',
        hintText2: 'أقصى سعر',
      ),
    );
  }
}
