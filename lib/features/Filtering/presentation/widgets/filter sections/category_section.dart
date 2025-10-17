import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Filtering/presentation/widgets/customs/custom_list_tile.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0, top: 20),
          child: Text(
            'الفئة',
            style: TextStyle(
              color: Color(0xff808080),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        CustomListTile(
          title: 'عقارات',
          subtitle: 'فلل البيع',
          image: 'assets/images/filtericon1.png',
          trailing: TextButton(
            onPressed: () {},
            child: Text(
              'تغيير',
              style: TextStyle(
                color: Color(0xff3B4CF2),
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),

        Divider(),

        CustomListTile(
          title: 'الموقع',
          subtitle: 'مصر',
          image: 'assets/images/location_on.png',
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.chevron_right_rounded, color: Color(0xff090F1F)),
          ),
        ),

        Divider(),
      ],
    );
  }
}
