import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/imageUrl/image_constants.dart';
import 'package:library_package/presentation/core/utils/padding/padding_constants.dart';
import 'package:library_package/presentation/core/widget/app_bar_widget/app_bar_widget.dart';
import 'package:library_package/presentation/core/widget/on_boarding_bottom_button/on_boarding_bottom_button.dart';
import 'package:library_package/presentation/language_selection/widgets/selection_view.dart';
import 'package:library_package/presentation/user_type_selection/user_type_selection_page.dart';

class SelectionPage extends StatelessWidget {
  SelectionPage({super.key});

  final List<String> language = [
    "My Preferred Language is English",
    "My Preferred Language is Hindi",
    "My Preferred Language is Bengali",
    "My Preferred Language is Tamil",
    "My Preferred Language is Telugu",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: const AppBarCustom(),
      body: SelectionView(language: language),
      bottomNavigationBar: Padding(
        padding: kPaddingAll16,
        child: OnBoardingBottomButton(
          text: 'Continue',
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => UserTypeSelectionPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
