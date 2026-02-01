import 'package:flutter/material.dart';
import 'package:qatana/presentation/auth/forgot/view/forgot_screen.dart';
import 'package:qatana/presentation/auth/reset_password/view/reset_password.dart';
import 'package:qatana/presentation/auth/signup/view/signup_screen.dart';
import 'package:qatana/presentation/auth/tabs/view/registration_screen.dart';
import 'package:qatana/presentation/auth/verification/view/verification_screen.dart';
import 'package:qatana/presentation/bottom_nav/bottom_nav_screen.dart';
import 'package:qatana/presentation/splash/splash.dart';
import 'package:qatana/presentation/subscription/view/subscription_screen.dart';
import '../../presentation/auth/signin/view/signin_screen.dart';

class Routes {
  static const String splashRoute = "/splash";
  static const String signInRoute = "/signInRoute";
  static const String signupRoute = "/signupRoute";
  static const String registrationRoute = "/registrationRoute";
  static const String forgotRoute = "/forgotRoute";
  static const String verificationRoute = '/verificationRoute';
  static const String resetPassRoute = '/resetPassRoute';
  static const String bottomNav = '/bottomNav';
  static const String subscriptionRoute = '/subscriptionRoute';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.registrationRoute:
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());
      case Routes.signInRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case Routes.signupRoute:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case Routes.forgotRoute:
        return MaterialPageRoute(builder: (_) => const ForgotScreen());
      case Routes.verificationRoute:
        return MaterialPageRoute(builder: (_) => const VerificationScreen());
      case Routes.resetPassRoute:
        return MaterialPageRoute(builder: (_) => const ResetPassword());
      case Routes.bottomNav:
        return MaterialPageRoute(builder: (_) => const BottomNavScreen());
      case Routes.subscriptionRoute:
        return MaterialPageRoute(builder: (_) => const SubscriptionScreen());

      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(body: Center(child: Text('NO ROUTES FOUND'))),
    );
  }
}
