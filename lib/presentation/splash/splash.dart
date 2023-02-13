import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../application/auth/auth_status/auth_bloc.dart';
import '../router/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String splashImage = 'assets/images/svg/splash.svg';
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            Future.delayed(const Duration(milliseconds: 500))
                .then((value) => context.router.replace(const HomeRoute()));
          },
          unauthenticated: (_) {
            Future.delayed(const Duration(milliseconds: 500))
                .then((value) => context.router.replace(const SignInRoute()));
          },
        );
      },
      child: Scaffold(
        body: Center(
            child: SvgPicture.asset(splashImage, height: 170, width: 80)),
      ),
    );
  }
}
