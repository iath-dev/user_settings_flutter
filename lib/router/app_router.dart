import 'package:flutter/material.dart';
import 'package:user_settings/models/models.dart';
import 'package:user_settings/screens/screens.dart';

class AppRoutes {
  static const String initialRoute = "home";

  static final menuOptions = <NavItem>[
    NavItem(
        route: "home",
        screen: const HomeScreen(),
        label: "Home",
        icon: Icons.home),
    NavItem(
        route: "map",
        screen: const SettingsScreen(),
        label: "Settings",
        icon: Icons.settings),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
