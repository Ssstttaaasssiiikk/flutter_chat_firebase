import 'package:chat_flutter_firebase/services/auth/auth_service.dart';
import 'package:chat_flutter_firebase/pages/settings_page.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void logout() {
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ListTile(
                  title: const Text('SETTINGS'),
                  leading: const Icon(Icons.settings),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('LOGUOT'),
                  leading: const Icon(Icons.logout),
                  onTap: () => logout(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
