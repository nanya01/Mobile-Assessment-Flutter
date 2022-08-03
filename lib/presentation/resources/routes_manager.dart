import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/presentation/onboarding/user_type.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case Routes.splashRoute:
      //   return MaterialPageRoute(builder: (_) => const SplashView());
      //
      // case Routes.loginRoute:
      //   return MaterialPageRoute(builder: (_) => const LoginView());

      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const UserTypeScreen());

      // case Routes.registerRoute:
      //   return MaterialPageRoute(builder: (_) => const RegisterView());
      //
      // case Routes.forgotPasswordRoute:
      //   return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      //
      // case Routes.mainRoute:
      //   return MaterialPageRoute(builder: (_) => const MainView());
      //
      // case Routes.storeDetailsRoute:
      //   return MaterialPageRoute(builder: (_) => const StoreDetailsView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("No route found"),
              ),
              body: const Center(
                child: Text("No Route Found"),
              ),
            ));
  }
}
