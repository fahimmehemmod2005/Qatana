import 'package:flutter/material.dart';
import 'package:qatana/presentation/auth/forgot/view/forgot_screen.dart';
import 'package:qatana/presentation/auth/reset_password/view/reset_password.dart';
import 'package:qatana/presentation/auth/signup/view/signup_screen.dart';
import 'package:qatana/presentation/auth/tabs/view/registration_screen.dart';
import 'package:qatana/presentation/auth/verification/view/verification_screen.dart';
import 'package:qatana/presentation/bottom_nav/bottom_nav_screen.dart';
import 'package:qatana/presentation/message/view/message_screen.dart';
import 'package:qatana/presentation/profile/view/account_management.dart';
import 'package:qatana/presentation/profile/view/change_password.dart';
import 'package:qatana/presentation/profile/view/fans_edit_profile.dart';
import 'package:qatana/presentation/profile/view/fans_profile_screen.dart';
import 'package:qatana/presentation/profile/view/privacy_settings.dart';
import 'package:qatana/presentation/profile/view/settings.dart';
import 'package:qatana/presentation/splash/splash.dart';
import 'package:qatana/presentation/subscription/view/current_plan.dart';
import 'package:qatana/presentation/subscription/view/payment_info.dart';
import 'package:qatana/presentation/subscription/view/payment_method.dart';
import 'package:qatana/presentation/subscription/view/review_summary.dart';
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
  static const String paymentRoute = '/paymentRoute';
  static const String paymentInfoRoute = '/paymentInfoRoute';
  static const String reviewSummaryRoute = '/reviewSummaryRoute';
  static const String fansProfileRoute = '/fansProfileRoute';
  static const String fansEditProfile = '/fansEditProfile';
  static const String settingsRoute = '/settingsRoute';
  static const String privacyRoute = '/privacyRoute';
  static const String accountManagement = '/accountManagement';
  static const String changePassword = '/changePassword';
  static const String currentPlanRoute = '/currentPlanRoute';
  static const String messageRoute = '/messageRoute';
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
      case Routes.paymentRoute:
        return MaterialPageRoute(builder: (_) => const PaymentMethod());
      case Routes.paymentInfoRoute:
        return MaterialPageRoute(builder: (_) => const PaymentInfo());
      case Routes.reviewSummaryRoute:
        return MaterialPageRoute(builder: (_) => const ReviewSummary());
      case Routes.fansProfileRoute:
        return MaterialPageRoute(builder: (_) => const FansProfileScreen());
      case Routes.fansEditProfile:
        return MaterialPageRoute(builder: (_) => const FansEditProfile());
      case Routes.settingsRoute:
        return MaterialPageRoute(builder: (_) => const Settings());
      case Routes.privacyRoute:
        return MaterialPageRoute(builder: (_) => const PrivacySettings());
        case Routes.accountManagement:
        return MaterialPageRoute(builder: (_) => const AccountManagement());
        case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => const ChangePassword());
        case Routes.currentPlanRoute:
        return MaterialPageRoute(builder: (_) => const CurrentPlan());
        case Routes.messageRoute:
        return MaterialPageRoute(builder: (_) => const MessageScreen());

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
