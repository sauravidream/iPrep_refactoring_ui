import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/core/widget/text_widget/text_widget.dart';

class TopVerifyTextSection extends StatelessWidget {
  const TopVerifyTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextWidget(
          data: 'Verify your account',
          fontSize: 18,
          color: kPrimaryDarkTextColor,
          inputValue: 4,
        ),
        kappHeight10,
        TextWidget(
          data:
              'Enter either your email or phone number to verify your account',
          fontSize: 14,
          color: kPrimaryDarkTextColor,
          inputValue: 1,
        ),
      ],
    );
  }
}
