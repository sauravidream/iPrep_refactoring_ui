import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/sign_up/widgets/sign_up_password_hint_container.dart';

class PassWordIndicatorWidget extends StatelessWidget {
  const PassWordIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        PasswordHintContainer(),
        kappWidth10,
        PasswordHintContainer(),
        kappWidth10,
        PasswordHintContainer(),
        kappWidth10,
        PasswordHintContainer(),
      ],
    );
  }
}
