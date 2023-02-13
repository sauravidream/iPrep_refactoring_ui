import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/verify_account/widgets/top_verify_text.dart';
import 'package:library_package/presentation/verify_account/widgets/verification_field.dart';

class AccountVerificationForm extends StatelessWidget {
  const AccountVerificationForm({super.key});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          TopVerifyTextSection(),
          kappHeight50,
          VerificationField(),
          kappHeight30,
        ],
      );
    } else {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            TopVerifyTextSection(),
            kappHeight50,
            VerificationField(),
            kappHeight30,
          ],
        ),
      );
    }
  }
}
