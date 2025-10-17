import 'package:flutter/material.dart';

class PlansHeader extends StatelessWidget {
  const PlansHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff090F1F),
                  size: 20,
                ),
              ),
              Text(
                'أختر الباقات اللى تناسبك',
                style: TextStyle(
                  color: Color(0xff090F1F),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Text(
              'أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك',
              style: TextStyle(
                color: Color(0xff84878F),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
