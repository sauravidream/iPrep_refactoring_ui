import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';

class TextOutLinedButton extends StatelessWidget {
  const TextOutLinedButton({
    super.key,
    this.onPressed,
    this.textFirst,
    this.textMiddle,
    this.textLast,
  });

  final VoidCallback? onPressed;
  final String? textFirst;
  final String? textMiddle;
  final String? textLast;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textFirst ?? ""),
        OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            side: const BorderSide(color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            minimumSize: const Size(60, 30),
          ),
          child: Center(
            child: Text(
              textMiddle ?? "",
              textAlign: TextAlign.center,
              style: const TextStyle(
                decoration: TextDecoration.underline,
                color: kPrimaryDarkColor,
              ),
            ),
          ),
        ),
        Text(textLast ?? ""),
      ],
    );
  }
}
