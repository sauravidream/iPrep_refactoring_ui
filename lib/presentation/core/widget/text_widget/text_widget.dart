import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    this.data,
    this.fontSize,
    this.color,
    this.inputValue,
  });

  final String? data;
  final double? fontSize;
  final Color? color;
  final int? inputValue;
  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? "",
      style: TextStyle(
        fontSize: fontSize ?? 16,
        color: color,
        fontWeight: FontWeight.values[inputValue ?? 4],
        fontFamily: "Inter",
      ),
    );
  }
}
