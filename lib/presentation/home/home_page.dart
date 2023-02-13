import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:library_package/presentation/router/router.gr.dart';
import '../../application/auth/auth_status/auth_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: AutoTabsScaffold(
        appBarBuilder: (context, tabsRouter) => appBar(context),
        routes: const [
          CoursesOverviewRoute(),
          WishlistOverviewRoute(),
          AccountOverviewRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return SalomonBottomBar(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              SalomonBottomBarItem(
                selectedColor: Colors.blue[200],
                icon: const Icon(
                  CupertinoIcons.video_camera,
                  size: 30,
                ),
                title: const Text('My learning'),
              ),
              SalomonBottomBarItem(
                selectedColor: Colors.pinkAccent[100],
                icon: const Icon(
                  CupertinoIcons.heart,
                  size: 30,
                ),
                title: const Text('Wishlist'),
              ),
              SalomonBottomBarItem(
                //3200E0
                selectedColor: Colors.blue[200],
                icon: const Icon(
                  CupertinoIcons.person,
                  size: 30,
                ),
                title: const Text('Account'),
              ),
            ],
          );
        },
      ),
    );
  }

  PreferredSizeWidget appBar(context) {
    const String notificationBell = 'assets/images/notification_bell.svg';
    Size size = MediaQuery.of(context).size;
    //const Text("Hello,\nAnni 👋🏻"),
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
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return IconButton(
                    onPressed: () => context
                        .read<AuthBloc>()
                        .add(const AuthEvent.signedOut()),
                    icon: SvgPicture.asset(
                      notificationBell,
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
