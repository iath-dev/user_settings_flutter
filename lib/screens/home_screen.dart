import 'package:flutter/material.dart';
import 'package:user_settings/settings/settings.dart';
import 'package:user_settings/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<int, String> genders = {
      1: "Male",
      2: "Female",
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          children: [
            ListTile(
              title: const Text("Name"),
              subtitle: Text(Preferences.name),
            ),
            ListTile(
              title: const Text("Genre"),
              subtitle: Text(genders[Preferences.gender]!),
            ),
            ListTile(
              title: const Text("DarkMode"),
              subtitle: Text(Preferences.darkMode ? "Activate" : "Inactive"),
            ),
          ],
        ),
      ),
    );
  }
}
