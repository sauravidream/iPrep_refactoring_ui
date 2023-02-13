import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_package/presentation/core/utils/imageUrl/image_constants.dart';

class AppBarIconBackButton extends StatelessWidget {
  const AppBarIconBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: SvgPicture.asset(kBackArrowlogo),
    );
  }
}
