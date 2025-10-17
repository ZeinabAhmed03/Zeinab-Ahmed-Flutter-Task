import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.trailing,
  });
  final String title;
  final String subtitle;
  final String image;
  final Widget trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Color(0xff090F1F),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Color(0xff808080),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      leading: Image.asset(image, height: 21, width: 21),
      trailing: trailing,
    );
  }
}
