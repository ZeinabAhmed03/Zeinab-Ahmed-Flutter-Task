import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Filtering/data/models/filter_model.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/customs/custom_sections_container.dart';

class CustomFilterSection extends StatelessWidget {
  const CustomFilterSection({
    super.key,
    required this.filter,
    required this.sectionTitle,
    required this.tableName,
  });
  final String tableName;
  final List<FilterModel> filter;
  final String sectionTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 18.0, top: 12),
          child: Text(
            sectionTitle,
            style: TextStyle(
              color: Color(0xff808080),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        Align(
          alignment: AlignmentGeometry.centerRight,

          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: filter
                  .map(
                    (filter) => CustomSectionsContainer(
                      filter: filter,
                      tableName: tableName,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
