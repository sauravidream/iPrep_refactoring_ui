import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String notificationBell = 'assets/images/notification_bell.svg';
    Size size = MediaQuery.of(context).size;
    return PreferredSize(
        preferredSize: Size.fromHeight(size.height * .17),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 12, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,\nAnni 👋🏻",
                style: const TextStyle().copyWith(
                  fontSize: 48,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  notificationBell,
                ),
              ),
            ],
          ),
        ));
  }
}
