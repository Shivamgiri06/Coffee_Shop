import 'package:flutter/material.dart';

class LightText extends StatelessWidget {
  final double size;
  final String text;
  final String font;
  final Color color;
  final TextOverflow textOverflow;

  LightText({
    super.key,
    this.textOverflow = TextOverflow.ellipsis,
    this.font = "font30",
    this.size = 20,
    this.color = Colors.black, // Corrected capitalization
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontFamily: font,
      ),
    );
  }
}
