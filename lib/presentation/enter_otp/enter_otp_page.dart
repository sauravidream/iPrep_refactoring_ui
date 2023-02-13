import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/imageUrl/image_constants.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/core/widget/app_bar_widget/app_bar_widget.dart';
import 'package:library_package/presentation/core/widget/on_boarding_bottom_button/on_boarding_bottom_button.dart';
import 'package:library_package/presentation/core/widget/otp_text_field/otp_text_field.dart';
import 'package:library_package/presentation/core/widget/text_outlined_button/text_outlined_button.dart';
import 'package:library_package/presentation/core/widget/text_widget/text_widget.dart';
import 'package:library_package/presentation/language_selection/language_selection_page.dart';

class EnterOtpPage extends StatelessWidget {
  const EnterOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: const AppBarCustom(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            kappHeight20,
            const TextWidget(
              data: 'Enter OTP',
              fontSize: 14,
              color: kPrimaryDarkTextColor,
              inputValue: 6,
            ),
            kappHeight10,
            const TextWidget(
              data: 'Verification OTP has been sent to your -----------',
              fontSize: 12,
              color: kPrimaryDarkTextColor,
              inputValue: 2,
            ),
            kappHeight10,
            const OtpTextField(),
            kappHeight40,
            OnBoardingBottomButton(
              text: 'Sign in',
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => SelectionPage(),
                  ),
                );
              },
            ),
            const TextOutLinedButton(
              textFirst: "Didn't receive OTP?",
              textMiddle: 'Resend OTP',
            )
          ],
        ),
      ),
    );
  }
}
