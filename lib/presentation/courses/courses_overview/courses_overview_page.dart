import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:library_package/application/auth/auth_status/auth_bloc.dart';
import 'package:library_package/application/auth/course/course_watcher/course_watcher_bloc.dart';
import 'package:library_package/injection.dart';

import '../../router/router.gr.dart';
import 'widgets/courses_overview_body_widget.dart';

class CoursesOverviewPage extends StatelessWidget {
  const CoursesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CourseWatcherBloc>(
          create: (context) => getIt<CourseWatcherBloc>()
            ..add(const CourseWatcherEvent.watchAllStarted()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.maybeMap(
              orElse: () => null,
              unauthenticated: (_) =>
                  context.router.replace(const SignInRoute()),
            ),
          )
        ],
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
          child: CoursesOverviewBody(),
        ),
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
              IconButton(
                onPressed: () {
                  context.context
                      .read<AuthBloc>()
                      .add(const AuthEvent.signedOut());
                },
                icon: SvgPicture.asset(
                  notificationBell,
                ),
              ),
            ],
          ),
        ));
  }
}
