import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/padding/padding_constants.dart';
import 'package:library_package/presentation/core/widget/app_bar_widget/app_bar_widget.dart';
import 'package:library_package/presentation/core/widget/on_boarding_bottom_button/on_boarding_bottom_button.dart';
import 'package:library_package/presentation/sign_up/widgets/sign_up_form.dart';
import 'package:library_package/presentation/verify_account/verify_your_account_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: const AppBarCustom(),
      body: const Padding(
        padding: kPaddingAll16,
        // SignUpForm is a widget that contains the form fields and buttons
        child: SignUpForm(),
      ),
      // OnBoardingBottomButton is a widget that contains the Sign up button
      bottomNavigationBar: Padding(
        padding: kPaddingRightLeftBottom16,
        child: OnBoardingBottomButton(
          text: "Sign up",
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const VerifyYourAccountPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
