import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkMode = false;
  bool _notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.brightness_6),
            title: const Text('Dark Mode'),
            trailing: Switch(
              value: _darkMode,
              onChanged: (value) {
                setState(() {
                  _darkMode = value;
                  // Implement theme change logic here if needed
                });
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.notifications_active),
            title: const Text('Notifications'),
            trailing: Switch(
              value: _notifications,
              onChanged: (value) {
                setState(() {
                  _notifications = value;
                  // Implement notification toggle logic here
                });
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Change Password'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to change password screen or implement here
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'Kisan Grocery Plus',
                applicationVersion: '1.0.0',
                applicationLegalese: '© 2025 Kisan Grocery Plus',
              );
            },
          ),
        ],
      ),
    );
  }
}
