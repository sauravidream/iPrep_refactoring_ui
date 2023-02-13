import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/imageUrl/image_constants.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';
import 'package:library_package/presentation/core/widget/text_widget/text_widget.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({
    super.key,
    this.list,
    this.image,
  });

  final List? list;
  final String? image;

  final List colorsListBorder = const [
     Color(0xFF22C59B),
     Color(0xFFFB9E36),
     Color(0xFF3772FF),
     Color(0xFFDF2935),
     Color(0xFF3D2B56),
    Color(0xFF22C59B),
    Color(0xFFFB9E36),
    Color(0xFF3772FF),
    Color(0xFFDF2935),
    Color(0xFF3D2B56)
  ];

  final List colorListContainer = const [
    Color(0xFFF8FFFD),
    Color.fromRGBO(251, 58, 54, 0.1),
    Color.fromRGBO(55, 114, 225, 0.1),
    Color.fromRGBO(223, 41, 53, 0.1),
    Color.fromRGBO(61, 43, 86, 0.1),
    Color(0xFFF8FFFD),
    Color.fromRGBO(251, 58, 54, 0.1),
    Color.fromRGBO(55, 114, 225, 0.1),
    Color.fromRGBO(223, 41, 53, 0.1),
    Color.fromRGBO(61, 43, 86, 0.1)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: list!.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 16,
        );
      },
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colorListContainer[index],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: colorsListBorder[index],
                ),
              ),
              child: Row(
                children: [
                  kappWidth20,
                  CircleAvatar(
                    radius: 17,
                    backgroundColor: colorsListBorder[index],
                    child: const Icon(Icons.abc),
                  ),
                  kappWidth20,
                  TextWidget(
                    data: list![index],
                    fontSize: 14,
                    color: kPrimaryDarkTextColor,
                    inputValue: 4,
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: colorsListBorder[index],
                    child: SvgPicture.asset(kChecklogo),
                  ),
                  kappWidth20,
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
