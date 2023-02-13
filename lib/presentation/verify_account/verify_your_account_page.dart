import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/imageUrl/image_constants.dart';
import 'package:library_package/presentation/core/widget/app_bar_widget/app_bar_widget.dart';
import 'package:library_package/presentation/core/widget/on_boarding_bottom_button/on_boarding_bottom_button.dart';
import 'package:library_package/presentation/enter_otp/enter_otp_page.dart';
import 'package:library_package/presentation/verify_account/widgets/account_verification_from.dart';

class VerifyYourAccountPage extends StatelessWidget {
  const VerifyYourAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: const AppBarCustom(),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: AccountVerificationForm(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: OnBoardingBottomButton(
          text: "Verify",
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const EnterOtpPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
