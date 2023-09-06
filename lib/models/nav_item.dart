import 'package:flutter/material.dart' show Widget, IconData;

class NavItem {
  final String route;
  final Widget screen;
  final IconData? icon;
  final String? label;

  NavItem({required this.route, required this.screen, this.icon, this.label});
}
