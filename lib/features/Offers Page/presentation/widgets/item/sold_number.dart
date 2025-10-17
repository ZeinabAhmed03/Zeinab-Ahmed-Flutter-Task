import 'package:flutter/material.dart';

class SoldNumber extends StatelessWidget {
  const SoldNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/fire.png', width: 20, height: 14),
        Text(
          '+3.3k تم بيع',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: Color(0xff7F7F7F),
          ),
        ),
      ],
    );
  }
}
