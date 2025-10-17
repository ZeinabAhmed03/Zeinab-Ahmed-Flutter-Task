import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonBody});
  final Widget buttonBody;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff0079FE),
          fixedSize: Size(double.infinity, 44),
        ),
        onPressed: () {},
        child: Center(child: buttonBody),
      ),
    );
  }
}
