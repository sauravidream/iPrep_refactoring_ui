import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/padding/padding_constants.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/core/widget/app_bar_widget/app_bar_widget.dart';
import 'package:library_package/presentation/core/widget/on_boarding_bottom_button/on_boarding_bottom_button.dart';
import 'package:library_package/presentation/core/widget/text_form_field_widget/text_form_field_widget.dart';
import 'package:library_package/presentation/core/widget/text_widget/text_widget.dart';
import 'package:library_package/presentation/home/home_page.dart';
import 'package:library_package/presentation/home_page/home_screen.dart';

class ClassSelectionPage extends StatelessWidget {
  ClassSelectionPage({super.key});

  final List classDivision = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
  ].reversed.toList();
  final bool? selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: const AppBarCustom(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: TextWidget(
                  data: "Tell us about yourself",
                  fontSize: 16,
                  inputValue: 5,
                ),
              ),
              kappHeight40,
              const TextFormFieldWidget(
                text: "What is your name?",
              ),
              kappHeight20,
              const TextFormFieldWidget(
                text: "What is your email?",
              ),
              kappHeight30,
              const TextWidget(
                data: 'And you study in class?',
                fontSize: 12,
                color: kPrimaryDarkTextColor,
                inputValue: 2,
              ),
              kappHeight10,
              GridView.builder(
                itemCount: classDivision.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                    ),
                    child: ChoiceChip(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 6,
                      ),
                      backgroundColor: kPrimaryColor,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      label: SizedBox(
                        width: 50,
                        child: Center(
                          child: Text(
                            classDivision[index] == 1
                                ? "${classDivision[index]}st"
                                : classDivision[index] == 2
                                    ? "${classDivision[index]}nd"
                                    : classDivision[index] > 2
                                        ? "${classDivision[index]}th"
                                        : "${classDivision[index]}th",
                            style: const TextStyle(
                              color: kPrimaryLightTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      disabledColor: kPrimaryColor,
                      selected: selected ?? false,
                      selectedColor: Colors.green,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      side: const BorderSide(
                        color: kTextFieldBorderColor,
                        width: 1,
                      ),
                      onSelected: (bool selected) {
                        selected = selected;
                        print("Class 1");
                      },
                    ),
                  );
                },
              ),
              kappHeight10,
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: kPaddingRightLeftBottom16,
        child: OnBoardingBottomButton(
          text: "Next",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  HomeScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
