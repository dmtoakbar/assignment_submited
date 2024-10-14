import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:idealmart/page/error_page.dart';
import 'package:idealmart/page/home/home_page.dart';
import 'package:idealmart/page/home/product_details.dart';
import 'package:idealmart/page/intro/intro.dart';
import 'package:idealmart/page/login_registration/forget_password.dart';
import 'package:idealmart/page/login_registration/login.dart';
import 'package:idealmart/page/login_registration/registration.dart';
import 'package:idealmart/route/names.dart';
import 'package:idealmart/share/constants/global_variable.dart';

class TGoRoute {
  static GoRouter routes = GoRouter(
    navigatorKey: TGlobalVariable.navigatorKey,
    routes: <GoRoute>[
      route(TRouteNames.introPage, const IntroPage()),
      route(TRouteNames.loginPage, const LoginPage()),
      route(TRouteNames.forgetPasswordPage, const ForgetPasswordPage()),
      route(TRouteNames.registrationPage, const RegistrationPage()),
      route(TRouteNames.homePage, const HomePage()),
      GoRoute(
        path: TRouteNames.productDetail,
        builder: (BuildContext context, GoRouterState state) {
          final index = state.extra! as int;
          return ProductDetails(
            index: index,
          );
        },
      ),
    ],
      errorBuilder: (_, __) => const ErrorPage()
  );


  //------------------- route modal -------------//
  static GoRoute route(String path, Widget route) {
  return GoRoute(
  path: path,
  builder: (BuildContext context, GoRouterState state) => route,
  );
  }
  //------------------- end route modal ----------//

  //---------------------- redirect route -------- -//
   static launch(BuildContext context, String route, [Object? extra]) {
    GoRouter.of(context).push(route, extra: extra);
   }
  //-------------------- end redirect route---------//

  //--- replace other routes and launch a new route----//
   static replace(BuildContext context, String route, [Object? extra]) {
    GoRouter.of(context).replace(route, extra: extra);
   }
  //--- end replace other routes and launch a new route----//
}