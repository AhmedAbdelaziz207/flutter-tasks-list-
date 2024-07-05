import 'package:flutter/material.dart';
import 'package:on_time/ui/views/screens/home/home_screen.dart';
import 'package:on_time/ui/views/screens/splash/splash_screen.dart';

import '../../core/utils/constants/routes.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoutes(RouteSettings routerSettings) {
    switch (routerSettings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) {
            return const HomeScreen();
          },
        );

      case Routes.splash:
      return  MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text("No routes exist "),
              ),
            );
          },
        );
    }
  }
}
