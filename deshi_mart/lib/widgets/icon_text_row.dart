import 'package:flutter/material.dart';

class IconTextRow extends StatelessWidget {
  final String imagePath;
  final String text;
  final Color textColor;

  const IconTextRow({
    super.key,
    required this.imagePath,
    required this.text,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagePath),
        SizedBox(width: 20),
        Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ],
    );
  }
}
