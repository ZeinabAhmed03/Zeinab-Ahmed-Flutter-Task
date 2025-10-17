import 'package:flutter/material.dart';
import 'package:it_legend_task/features/Filtering/presentation/views/filter_view.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0, left: 16, right: 16),
      child: Row(
        children: [
          Text(
            'استكشف العروض',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff090F1F),
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FilterView()),
            ),
            child: Row(
              children: [
                Text(
                  'الكل',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff808080),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 12),
                Icon(Icons.arrow_forward, color: Color(0xff808080), size: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
