import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/core/widget/text_form_field_widget/text_form_field_widget.dart';

class NameAndUserNameSection extends StatelessWidget {
  const NameAndUserNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        // Your name text
        kappHeight10,
        // Enter your name text field
        TextFormFieldWidget(
          text: "Your name",
          hintText: "Enter your name",
        ),
        kappHeight20,
        // Enter your username or email text field
        TextFormFieldWidget(
          text: "Username",
          hintText: "Enter a username or your email",
        ),
      ],
    );
  }
}
