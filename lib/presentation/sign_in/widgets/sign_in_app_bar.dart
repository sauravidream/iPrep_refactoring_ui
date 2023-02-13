import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/sign_in/widgets/sign_in_app_bar_button.dart';

class AppBarSignIn extends StatelessWidget implements PreferredSizeWidget {
  const AppBarSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 68,
      elevation: 0,
      backgroundColor: kPrimaryColor,
      actions: const [
        SignInAppBarButton(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
