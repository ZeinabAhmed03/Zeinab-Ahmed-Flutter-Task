import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/customs/custom_text_field.dart';

class CustomTextFieldSections extends StatelessWidget {
  const CustomTextFieldSections({
    super.key,
    this.hintText1,
    this.hintText2,
    required this.sectionName,
  });
  final String? hintText1;
  final String? hintText2;
  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sectionName,
          style: TextStyle(
            color: Color(0xff808080),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          children: [
            CustomTextField(hintText: hintText1),
            SizedBox(width: 12),
            CustomTextField(hintText: hintText2),
          ],
        ),
      ],
    );
  }
}
