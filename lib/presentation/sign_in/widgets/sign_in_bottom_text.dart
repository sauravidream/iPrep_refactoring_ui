import 'package:flutter/cupertino.dart';
import 'package:library_package/presentation/core/widget/text_outlined_button/text_outlined_button.dart';
import 'package:library_package/presentation/sign_up/sign_up_page.dart';

class BottomTextSignIn extends StatelessWidget {
  const BottomTextSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextOutLinedButton(
      textFirst: "Don't have an account?",
      textMiddle: "Sign up",
      textLast: "now!",
      onPressed: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const SignUpPage(),
          ),
        );
      },
    );
  }
}
