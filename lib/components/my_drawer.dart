import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:pizaa/auth/login_rigester.dart';
import 'package:pizaa/components/drawer_tiles.dart';
import 'package:pizaa/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Boxicons.bx_lock_open,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          DrawerTiles(
            text: 'H O M E',
            icon: Boxicons.bx_home,
            onTap: () => Navigator.pop(context),
          ),
          DrawerTiles(
            text: 'S E T T I N G S',
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
          const Spacer(),
          DrawerTiles(
            text: 'L O G O U T',
            icon: Boxicons.bxs_log_out_circle,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginRegister(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
