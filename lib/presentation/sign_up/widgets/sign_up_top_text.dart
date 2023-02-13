import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/sign_up/widgets/sign_up_text_widget.dart';

class TopSignUpTextSection extends StatelessWidget {
  const TopSignUpTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextWidgetSignUp(
          text: "Sign up",
          fontSize: 18,
          inputValue: 5,
        ),
        kappHeight10,
        TextWidgetSignUp(
          text: "Enter the below details to create your account",
          fontSize: 14,
          inputValue: 2,
        ),
      ],
    );
  }
}
