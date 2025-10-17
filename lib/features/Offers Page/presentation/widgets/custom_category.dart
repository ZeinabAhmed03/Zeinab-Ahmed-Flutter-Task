import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Offers%20Page/data/models/category_model.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 73,
          height: 56,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Image.asset(category.categoryImage, fit: BoxFit.fill),
          ),
        ),
        SizedBox(height: 6),
        Text(
          category.categoryName,
          style: TextStyle(
            color: Color(0xff090F1F),
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
