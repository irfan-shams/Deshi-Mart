import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double thickness;
  final Color color;

  const CustomDivider({
    super.key,
    this.thickness = 1.0,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness,
      color: color,
    );
  }
}
