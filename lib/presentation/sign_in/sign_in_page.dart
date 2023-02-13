import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/sign_in/widgets/sign_in_app_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../injection.dart';
import 'widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? Scaffold(
                backgroundColor: kPrimaryColor,
                appBar: const AppBarSignIn(),
                body: BlocProvider(
                  create: (context) => getIt<SignInFormBloc>(),
                  child: const SignInForm(),
                ),
              )
            : Scaffold(
                backgroundColor: kPrimaryColor,
                appBar: const AppBarSignIn(),
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 500,
                        child: BlocProvider(
                          create: (context) => getIt<SignInFormBloc>(),
                          child: const SignInForm(),
                        ),
                      ),
                    ),
                  ],
                ),
              );
      },
    );
  }
}
