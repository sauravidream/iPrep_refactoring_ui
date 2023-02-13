import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/core/widget/text_widget/text_widget.dart';

class PassWordStrengthIndiactor extends StatelessWidget {
  const PassWordStrengthIndiactor({super.key});

  @override
  Widget build(BuildContext context) {
    return // Password text
        Row(
      children: const [
        kappWidth20,
        Expanded(
          child: LinearProgressIndicator(
            value: 3 / 4,
            minHeight: 6,
            backgroundColor: kPrimaryAuthCardColor,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
        kappWidth10,
        TextWidget(
          data: "Strong",
          fontSize: 12,
          inputValue: 4,
          color: kHintTextColor,
        ),
        kappWidth40
      ],
    );
  }
}
