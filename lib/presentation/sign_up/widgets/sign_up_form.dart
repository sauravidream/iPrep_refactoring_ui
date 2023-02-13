import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/padding/padding_constants.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/core/widget/text_form_field_widget/text_form_field_widget.dart';
import 'package:library_package/presentation/core/widget/text_widget/text_widget.dart';
import 'package:library_package/presentation/sign_up/widgets/sign_up_name_username_field.dart';
import 'package:library_package/presentation/sign_up/widgets/sign_up_text_widget.dart';
import 'package:library_package/presentation/sign_up/widgets/sign_up_top_text.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        kappHeight20,
        // Sign up and Enter the below details to create your account text
        const TopSignUpTextSection(),
        kappHeight20,
        // Your name and Username or email text and text field
        const NameAndUserNameSection(),
        kappHeight10,
        // You can also use your roll number as your user name text
        const TextWidgetSignUp(
          text: "* You can also use your roll number as your user name",
          fontSize: 9,
          inputValue: 2,
        ),
        kappHeight30,
        // Password strength indicator
        const TextFormFieldWidget(
          text: "Password",
          hintText: "Enter your password",
        ),
        // Enter your password text field
        kappHeight20,
        // Confirm your password text field
        const TextFormFieldWidget(
          text: "Confirm password",
          hintText: "Confirm your password",
        ),
        kappHeight20,
        Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kPrimaryAuthCardColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: kTextFieldBorderColor,
              width: 1,
            ),
          ),
          child: Padding(
            padding: kPaddingAll8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextWidget(
                  data: "Password must contain:",
                  fontSize: 16,
                  inputValue: 4,
                ),
                kappHeight10,
                TextWidget(
                  data:
                      "Your password must be at least 8 characters long, and contain at least one uppercase letter, one lowercase letter, and one number.",
                  fontSize: 9,
                  inputValue: 2,
                ),
              ],
            ),
          ),
        ),
        kappHeight20,
        // Password indicator widget
        // Sign up button
      ],
    );
  }
}
