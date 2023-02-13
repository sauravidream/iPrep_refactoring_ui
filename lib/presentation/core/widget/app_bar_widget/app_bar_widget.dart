import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_package/presentation/core/utils/imageUrl/image_constants.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? trailing;

  const AppBarCustom({
    super.key,
    this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            height: 35,
            width: 30,
            child: SvgPicture.asset(
              kBackArrowlogo,
            ),
          ),
        ),
        title: title,
        trailing: trailing,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
