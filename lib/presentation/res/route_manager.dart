import 'package:flutter/material.dart';
import 'package:team_m/presentation/login/login_screen.dart';
import 'package:team_m/presentation/register/signup_screen.dart';
import 'package:team_m/presentation/res/string_manager.dart';
import 'package:team_m/presentation/splash/splash_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerhRoute = "/register";
  // static const String forgotpasswordRoute = "/forgot_password";
  // static const String mainRoute = "/main";
  // static const String storedetailsRoute = "/store_details";
}

class RouteManager {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerhRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      // case Routes.forgotpasswordRoute:
      //   return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      // case Routes.mainRoute:
      //   return MaterialPageRoute(builder: (_) => const MainView());
      // case Routes.storedetailsRoute:
      //   return MaterialPageRoute(builder: (_) => const StoreView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(
                child: Text(AppStrings.noRouteFound),
              ),
            ));
  }
}
