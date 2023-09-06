import 'package:flutter/material.dart';
import 'package:user_settings/models/nav_item.dart';
import 'package:user_settings/router/app_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [_DrawerHeader(), _NavItems()],
      ),
    );
  }
}

class _NavItems extends StatelessWidget {
  const _NavItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<NavItem> routes = AppRoutes.menuOptions;

    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: routes.length,
      separatorBuilder: (_, __) => const Divider(),
      itemBuilder: (context, index) => ListTile(
        dense: true,
        title: Text(routes[index].label),
        leading: Icon(routes[index].icon),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushReplacementNamed(context, routes[index].route);
        },
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
        decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
                image: AssetImage("assets/pattern.jpg"),
                fit: BoxFit.cover,
                repeat: ImageRepeat.repeat)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "User Settings",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "Change user configurations",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ));
  }
}
