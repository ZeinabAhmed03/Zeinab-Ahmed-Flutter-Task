import 'package:flutter/material.dart';

class PlanHeader extends StatefulWidget {
  const PlanHeader({super.key, required this.plan});
  final String plan;
  @override
  State<PlanHeader> createState() => _PlanHeaderState();
}

class _PlanHeaderState extends State<PlanHeader> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: isSelected,
          activeColor: Color(0xff3B4CF2),

          onChanged: (value) {
            setState(() {
              isSelected = !isSelected;
            });
          },
        ),
        Text(
          widget.plan,
          style: TextStyle(
            fontSize: 16,
            color: isSelected ? Color(0xff3B4CF2) : Color(0xff090F1F),
            fontWeight: FontWeight.w700,
          ),
        ),

        Spacer(),
        Text(
          '3,000ج.م',

          style: TextStyle(
            fontSize: 16,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,

            decorationColor: Color(0xffF95B1C),
            decorationThickness: 30,

            color: Color(0xffF95B1C),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(width: 13),
      ],
    );
  }
}
