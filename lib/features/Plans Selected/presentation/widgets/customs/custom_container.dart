import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.body});
  final String body;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 42,
          width: 74,
          decoration: BoxDecoration(
            color: Color(0xffF5F8F5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
            border: Border(
              top: BorderSide(color: Color(0xff3A813F)),
              left: BorderSide(color: Color(0xff3A813F)),
              right: BorderSide(color: Color(0xff3A813F)),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                body,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3A813F),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Text(
            'ضعف عدد المشاهدات',
            maxLines: 2,
            style: TextStyle(
              fontSize: 12,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: Color(0xff090F1F),
              fontWeight: FontWeight.w400,
              color: Color(0xff090F1F),
            ),
          ),
        ),
      ],
    );
  }
}
