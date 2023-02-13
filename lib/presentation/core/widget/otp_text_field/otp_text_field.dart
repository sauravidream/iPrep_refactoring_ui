import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/padding/padding_constants.dart';
import 'package:library_package/presentation/core/utils/responsive/app_responsive.dart';
import 'package:otp_text_field/otp_text_field.dart';

class OtpTextField extends StatelessWidget {
  const OtpTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: kTextFieldBorderColor,
          width: 1,
        ),
      ),
      child: Padding(
        padding: kPaddingAll12,
        child: OTPTextField(
          length: 6,
          width: kWidth,
          fieldWidth: 25,
          textFieldAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }
}
