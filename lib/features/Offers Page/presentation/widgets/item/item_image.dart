import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF2F2F2),
      height: 225,
      child: Image.asset(image, fit: BoxFit.fill, width: 210, height: 225),
    );
  }
}
