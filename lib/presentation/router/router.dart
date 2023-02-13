import 'package:auto_route/auto_route.dart';
import 'package:library_package/presentation/home/home_page.dart';

import '../account/account_overview_page.dart';
import '../courses/courses_overview/courses_overview_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash.dart';
import '../wishlist/wishlist_overview_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
        page: SplashPage, initial: true, path: '/', fullscreenDialog: true),
    AutoRoute(page: SignInPage, fullscreenDialog: true),
    AutoRoute(
      page: HomePage,
      fullscreenDialog: true,
      children: <AutoRoute>[
        AutoRoute(page: CoursesOverviewPage, fullscreenDialog: true),
        AutoRoute(page: WishlistOverviewPage, fullscreenDialog: true),
        AutoRoute(page: AccountOverviewPage, fullscreenDialog: true),
      ],
    ),
  ],
)
class $AppRouter {}
