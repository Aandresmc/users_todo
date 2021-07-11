import 'package:flutter/material.dart';
// features

import 'package:users_todo/features/users/presentation/pages/user/user_screen.dart';
import 'package:users_todo/features/users/presentation/pages/users/users_screen.dart';

// routes app
import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.UsersScreen:
        return MaterialPageRoute(builder: (_) => UsersScreen.init());

      case AppRoutes.UserScreen:
        return MaterialPageRoute(builder: (_) => UserScreen.init(args));

      default:
        return MaterialPageRoute(builder: (_) => UsersScreen.init());
    }
  }
}
