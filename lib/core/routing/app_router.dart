import 'package:flutter/material.dart';
import 'package:popcorn_portal/features/home/ui/screens/home_screen.dart';

import 'routes.dart';

class AppRouter {
  Route? generatRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
    return null;
  }
}
