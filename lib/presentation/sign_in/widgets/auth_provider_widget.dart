import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';

class AuthProviderWidget extends StatelessWidget {
  const AuthProviderWidget({
    super.key,
    this.titleText,
    this.svgAssetImage,
  });

  final String? titleText;
  final String? svgAssetImage;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: kPrimaryAuthCardColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ListTile(
        selectedColor: kPrimaryDarkColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SvgPicture.asset(
            svgAssetImage ?? "",
            height: 20,
            width: 20,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            right: 50,
          ),
          child: Text(
            titleText ?? "",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13.4,
              fontWeight: FontWeight.w500,
              fontFamily: "Inter",
            ),
          ),
        ),
      ),
    );
  }
}
