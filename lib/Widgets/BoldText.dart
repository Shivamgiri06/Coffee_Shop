import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  final double size;
  final String font; // Not nullable since it has a default value
  final String text;
  final Color? color;
  final TextAlign? align;
  final TextOverflow textOverflow;

  BoldText({
    super.key,
    this.size = 20,
    this.font = "font30",
    this.color,
    this.align,
    this.textOverflow = TextOverflow.ellipsis, // Default value for textOverflow
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      textAlign: align,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: color,
        fontFamily: font,
      ),
    );
  }
}
