import 'package:flutter/material.dart';
import 'package:qatana/presentation/auth/signup/view/signup_screen.dart';
import 'package:qatana/presentation/splash/splash.dart';

import '../../presentation/auth/signin/view/signin_screen.dart';

class Routes {
  static const String splashRoute = "/splash";
  static const String signInRoute = "/signInRoute";
  static const String signupRoute = "/signupRoute";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.signInRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case Routes.signupRoute:
        return MaterialPageRoute(builder: (_) => const SignupScreen());

      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('noRoute')),
        body: Center(child: Text('noRoute')),
      ),
    );
  }
}
