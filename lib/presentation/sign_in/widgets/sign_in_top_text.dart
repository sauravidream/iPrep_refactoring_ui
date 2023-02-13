import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';

class TopTextSectionSignIn extends StatelessWidget {
  const TopTextSectionSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        kappHeight40,
        Center(
          child: Text(
            "Please enter your details",
            style: TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.w600,
              color: kPrimaryDarkTextColor,
            ),
          ),
        ),
        kappHeight45,
        Center(
          child: Text(
            "Sign in",
            style: TextStyle(
              fontSize: 14.85,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
