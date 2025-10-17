import 'package:flutter/material.dart';

class NewsBanner extends StatelessWidget {
  const NewsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: Color(0xffFFF7F4),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Icon(Icons.check, color: Color(0xff3A813F)),
              Text(
                'شحن مجانى',
                style: TextStyle(
                  color: Color(0xff3A813F),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),

              Row(
                children: [
                  Text(
                    'لأى عرض تطلبه دلوقتى',
                    style: TextStyle(
                      color: Color(0xff090F1F),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '!',
                    style: TextStyle(
                      color: Color(0xff090F1F),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
