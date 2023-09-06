import 'package:flutter/material.dart';
import 'package:user_settings/router/app_router.dart';
import 'package:user_settings/screens/home_screen.dart';
import 'package:user_settings/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Settings',
      theme: AppTheme.theme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      routes: AppRoutes.getAppRoutes(),
    );
  }
}
