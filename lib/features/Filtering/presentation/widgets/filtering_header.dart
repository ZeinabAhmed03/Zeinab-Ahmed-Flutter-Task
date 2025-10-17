import 'package:flutter/material.dart';

class FilteringHeader extends StatelessWidget {
  const FilteringHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45.0, left: 8, right: 8),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.close, color: Color(0xff090F1F)),
          ),
          Text(
            'فلترة',
            style: TextStyle(
              color: Color(0xff090F1F),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),

          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              'رجوع للأفتراضى',
              style: TextStyle(
                color: Color(0xff0079FE),
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
