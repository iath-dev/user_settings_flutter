import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_settings/providers/theme_provider.dart';
import 'package:user_settings/router/app_router.dart';
import 'package:user_settings/settings/settings.dart';
import 'package:user_settings/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(const StateApp());
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => ThemeProvider(isDarkMode: Preferences.darkMode))
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Settings',
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      routes: AppRoutes.getAppRoutes(),
    );
  }
}
