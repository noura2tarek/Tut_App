import 'package:flutter/material.dart';
import 'package:tutac_app/presentation_layer/forgot_password_screen/forgot_password_view.dart';
import 'package:tutac_app/presentation_layer/login_screen/login_view.dart';
import 'package:tutac_app/presentation_layer/main/main_view.dart';
import 'package:tutac_app/presentation_layer/on_boarding_screen/on_boarding_view.dart';
import 'package:tutac_app/presentation_layer/register_screen/register_view.dart';
import 'package:tutac_app/presentation_layer/resources_mg/strings_manager.dart';
import 'package:tutac_app/presentation_layer/splash_screen/splash_view.dart';
import 'package:tutac_app/presentation_layer/store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String loginRoute = "/login";
  static const String mainRoute = "/main";
  static const String registerRoute = "/register";
  static const String onBoardingRoute = "/onBoarding";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String storeDetailsRoute = "/storeDetails";
}

class RoutesGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (context) => const RegisterView(),
        );
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: (context) => const ForgotPasswordView(),
        );
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (context) => const MainView(),
        );
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(
          builder: (context) => const StoreDetailsView(),
        );
      default:
        return unDefinedRoute(settings);
    }
  }

  static Route<dynamic>? unDefinedRoute(RouteSettings? settings) {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound), //strings manager
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound), //strings manager
        ),
      ),
    );
  }
}
