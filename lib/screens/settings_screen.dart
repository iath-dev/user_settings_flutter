import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_settings/providers/providers.dart';
import 'package:user_settings/settings/prefs.dart';
import 'package:user_settings/widgets/drawer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              SwitchListTile(
                value: Preferences.darkMode,
                onChanged: (v) {
                  Preferences.darkMode = v;
                  final themeProvider =
                      Provider.of<ThemeProvider>(context, listen: false);

                  v
                      ? themeProvider.setDarkMode()
                      : themeProvider.setLightMode();
                  setState(() {});
                },
                title: Text("Dark Mode"),
              ),
              const ListTile(
                title: Text("Genre"),
              ),
              RadioListTile(
                value: 1,
                groupValue: Preferences.gender,
                onChanged: (v) {
                  Preferences.gender = v ?? 1;
                  setState(() {});
                },
                dense: true,
                title: Text("Male"),
              ),
              RadioListTile(
                value: 2,
                groupValue: Preferences.gender,
                onChanged: (v) {
                  Preferences.gender = v ?? 2;
                  setState(() {});
                },
                dense: true,
                title: Text("Female"),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                initialValue: Preferences.name,
                onChanged: (v) {
                  Preferences.name = v;
                  setState(() {});
                },
                decoration: const InputDecoration(
                    label: Text("Username"), suffixIcon: Icon(Icons.person)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
