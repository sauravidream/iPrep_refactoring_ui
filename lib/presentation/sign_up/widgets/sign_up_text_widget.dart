import 'package:flutter/material.dart';

class TextWidgetSignUp extends StatelessWidget {
  const TextWidgetSignUp({
    super.key,
    this.text,
    this.fontSize,
    this.inputValue,
  });

  final String? text;
  final double? fontSize;
  final int? inputValue;
  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
        fontSize: fontSize ?? 16.0,
        fontWeight: FontWeight.values[inputValue ?? 5],
        color: const Color(0xFF424242),
      ),
    );
  }
}
