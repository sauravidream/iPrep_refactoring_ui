import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/imageUrl/image_constants.dart';
import 'package:library_package/presentation/core/utils/padding/padding_constants.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/core/widget/list_view_builder_widget/list_view_builder_widget.dart';
import 'package:library_package/presentation/core/widget/text_widget/text_widget.dart';

class SelectionView extends StatelessWidget {
  const SelectionView({
    super.key,
    this.language,
  });

  final List? language;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingAll16,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.center,
            child: const TextWidget(
              data: 'My Preferred Language is',
              fontSize: 16,
              color: kPrimaryDarkTextColor,
              inputValue: 5,
            ),
          ),
          kappHeight20,
          Flexible(
            child: ListViewBuilderWidget(
              list: language,
              image: kEnglishlogo,
            ),
          ),
        ],
      ),
    );
  }
}
