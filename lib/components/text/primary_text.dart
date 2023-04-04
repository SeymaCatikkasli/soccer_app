import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final double size;
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  const PrimaryText({
    super.key,
    required this.text,
    this.size = 13,
    this.fontWeight = FontWeight.w500,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: MediaQuery.of(context).textScaleFactor * size,
          fontWeight: fontWeight),
    );
  }
}
