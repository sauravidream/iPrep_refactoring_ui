import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_package/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:library_package/presentation/core/utils/imageUrl/image_constants.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/core/widget/on_boarding_bottom_button/on_boarding_bottom_button.dart';
import 'package:library_package/presentation/core/widget/text_form_field_widget/text_form_field_widget.dart';
import 'package:library_package/presentation/sign_in/widgets/auth_provider_widget.dart';
import 'package:library_package/presentation/sign_in/widgets/sign_in_bottom_text.dart';
import 'package:library_package/presentation/sign_in/widgets/sign_in_top_text.dart';

class SignInOptions extends StatelessWidget {
  const SignInOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16.0),
      children: [
        // Let's Get Started and Sign in widget here
        const TopTextSectionSignIn(),
        kappHeight10,
        // Auth provider widget here
        // Google, Apple, Phone
        const AuthProviderWidget(
          titleText: "Continue with Google",
          svgAssetImage: kGooglelogo,
        ),
        Platform.isIOS
            ? const AuthProviderWidget(
                titleText: "Continue with Apple",
                svgAssetImage: kApplelogo,
              )
            : const SizedBox(),
        const AuthProviderWidget(
          titleText: "Continue with Phone",
          svgAssetImage: kPhonelogo,
        ),
        kappHeight20,
        const Center(
          child: Text("Or"),
        ),
        kappHeight20,
        // User Name text field
        TextFormFieldWidget(
          hintText: "User name",
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) => context.read<SignInFormBloc>().add(
                SignInFormEvent.emailChanged(email: value),
              ),
          validator: (value) =>
              context.read<SignInFormBloc>().state.emailAddress.value.fold(
                    (f) => f.maybeMap(
                      orElse: () => null,
                      invalidEmail: (_) => 'Invalid Email',
                    ),
                    (_) => null,
                  ),
        ),
        kappHeight10,
        // Password text field
        TextFormFieldWidget(
          hintText: "Password",
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) => context.read<SignInFormBloc>().add(
                SignInFormEvent.passwordChanged(password: value),
              ),
          validator: (value) => context
              .read<SignInFormBloc>()
              .state
              .password
              .value
              .fold(
                  (f) => f.maybeMap(
                      orElse: () => null,
                      shortPassword: (_) => "Short Password"),
                  (_) => null),
          obscureText: true,
          suffixIcon: const Icon(Icons.remove_red_eye_outlined),
        ),
        kappHeight30,
        // Sign in button
        OnBoardingBottomButton(
          text: "Sign in",
          onPressed: () => context.read<SignInFormBloc>().add(
                const SignInFormEvent.signInWithEmailAndPasswordPressed(),
              ),
        ),
        kappHeight15,
        const BottomTextSignIn(),
      ],
    );
  }
}
