import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/core/widget/text_form_field_widget/text_form_field_widget.dart';
import 'package:library_package/presentation/core/widget/text_widget/text_widget.dart';

class VerificationField extends StatelessWidget {
  const VerificationField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextFormFieldWidget(
          text: "Email address",
          hintText: 'Enter your email address',
        ),
        kappHeight30,
        Center(
          child: TextWidget(
            data: "Or",
            fontSize: 14,
            color: kPrimaryDarkTextColor,
            inputValue: 3,
          ),
        ),
        kappHeight30,
        TextFormFieldWidget(
          text: "Phone number",
          hintText: 'Enter your phone number',
        ),
      ],
    );
  }
}
