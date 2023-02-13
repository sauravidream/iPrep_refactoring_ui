import 'dart:io';

import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/padding/padding_constants.dart';

class OnBoardingBottomButton extends StatelessWidget {
  const OnBoardingBottomButton({
    super.key,
    this.text,
    this.onPressed,
    this.buttonTextFontWeight,
  });

  final String? text;
  final VoidCallback? onPressed;
  final int? buttonTextFontWeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Platform.isIOS ? kPaddingOnlyBottom4 : const EdgeInsets.all(0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: kButtonBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          minimumSize: const Size(double.infinity, 60),
        ),
        child: Text(
          text ?? "",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.values[buttonTextFontWeight ?? 5],
          ),
        ),
      ),
    );
  }
}
