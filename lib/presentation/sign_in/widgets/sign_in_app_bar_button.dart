import 'package:flutter/material.dart';
import 'package:library_package/presentation/core/utils/color/color_constants.dart';
import 'package:library_package/presentation/core/utils/sizedbox/size_const.dart';

class SignInAppBarButton extends StatelessWidget {
  const SignInAppBarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(9.0),
        child: Container(
          width: 175,
          decoration: BoxDecoration(
            color: kButtonLightColor,
            borderRadius: BorderRadius.circular(9.0),
            border: Border.all(
              color: kButtonBackground,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(
                  Icons.language,
                  color: kButtonBackground,
                ),
                kappWidth10,
                Expanded(
                  child: Text(
                    'Language(EN)',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: kButtonBackground,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
