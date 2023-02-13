import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_package/application/auth/auth_status/auth_bloc.dart';
import '../../injection.dart';
import '../router/router.gr.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        )
      ],
      child: MaterialApp.router(
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.light().copyWith(
        //   textTheme: const TextTheme(
        //     bodyText1: TextStyle(
        //       fontFamily: "Nunito",
        //       fontSize: 14,
        //       fontStyle: FontStyle.normal,
        //       fontWeight: FontWeight.w400,
        //     ),
        //     bodyText2: TextStyle(
        //       fontFamily: "Nunito",
        //       fontSize: 16,
        //       fontStyle: FontStyle.normal,
        //       fontWeight: FontWeight.w600,
        //     ),
        //     headline1: TextStyle(
        //       fontFamily: "Nunito",
        //       fontSize: 20,
        //       fontStyle: FontStyle.normal,
        //       fontWeight: FontWeight.w600,
        //     ),
        //     headline2: TextStyle(
        //       fontFamily: "Nunito",
        //       fontSize: 20,
        //       fontStyle: FontStyle.normal,
        //       fontWeight: FontWeight.w600,
        //     ),
        //     headline3: TextStyle(
        //       fontFamily: "Nunito",
        //       fontSize: 20,
        //       fontStyle: FontStyle.normal,
        //       fontWeight: FontWeight.w600,
        //     ),
        //     headline4: TextStyle(
        //       fontFamily: "Nunito",
        //       fontSize: 22,
        //       fontStyle: FontStyle.normal,
        //       fontWeight: FontWeight.w600,
        //     ),
        //     headline5: TextStyle(
        //       fontFamily: "Nunito",
        //       fontSize: 22,
        //       fontStyle: FontStyle.normal,
        //       fontWeight: FontWeight.w600,
        //     ),
        //     headline6: TextStyle(
        //       fontFamily: "Nunito",
        //       fontSize: 48,
        //       fontStyle: FontStyle.normal,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //   scaffoldBackgroundColor: Colors.black,
        //   backgroundColor: Colors.black,
        //   appBarTheme: const AppBarTheme(
        //       backgroundColor: Colors.black, centerTitle: false),
        //   colorScheme: ColorScheme.fromSwatch().copyWith(),
        //   inputDecorationTheme: InputDecorationTheme(
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(8),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
