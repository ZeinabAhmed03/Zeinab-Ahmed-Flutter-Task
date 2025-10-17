import 'package:flutter/material.dart';

class ItemName extends StatelessWidget {
  const ItemName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Text(
            name,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 14.5,
              fontWeight: FontWeight.w500,
              color: Color(0xff090F1F),
            ),
          ),
        ),
        const SizedBox(width: 4),
        Image.asset('assets/images/percentage.png', height: 17, width: 17),
      ],
    );
  }
}
