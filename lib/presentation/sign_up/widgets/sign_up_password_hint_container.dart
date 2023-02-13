import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/responsive/app_responsive.dart';

class PasswordHintContainer extends StatelessWidget {
  const PasswordHintContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: kWidth * 0.14,
      color: const Color(0xFFDEDEDE),
    );
  }
}
