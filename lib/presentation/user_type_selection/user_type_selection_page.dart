import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:library_package/presentation/board_selection/board_selection_page.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/imageUrl/image_constants.dart';
import 'package:library_package/presentation/core/utils/padding/padding_constants.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/core/widget/app_bar_widget/app_bar_widget.dart';
import 'package:library_package/presentation/core/widget/list_view_builder_widget/list_view_builder_widget.dart';
import 'package:library_package/presentation/core/widget/on_boarding_bottom_button/on_boarding_bottom_button.dart';
import 'package:library_package/presentation/core/widget/text_widget/text_widget.dart';

class UserTypeSelectionPage extends StatelessWidget {
  UserTypeSelectionPage({super.key});

  final List userType = [
    "I am a Student",
    "I am a Teacher",
    "I am a Parent",
    "I am a School",
    "I am a College",
    "I am a University",
  ].reversed.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: const AppBarCustom(),
      body: Padding(
        padding: kPaddingAll16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              child: const TextWidget(
                data: 'I am a',
                fontSize: 16,
                color: kPrimaryDarkTextColor,
                inputValue: 5,
              ),
            ),
            kappHeight20,
            Flexible(
              child: ListViewBuilderWidget(
                list: userType,
                image: kEnglishlogo,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: kPaddingAll16,
        child: OnBoardingBottomButton(
          text: 'Continue',
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => BoardSelectionPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
