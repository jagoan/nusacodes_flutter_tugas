import 'package:flutter/material.dart';

import 'package:nusacodes_flutter_tugas/pages/profile_page.dart';
import 'package:nusacodes_flutter_tugas/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageList = ['Profile Page', 'Settings Page'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text('Home Page')),
      body: ListView.builder(
        itemCount: pageList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(pageList[index][0])),
            title: Text(pageList[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      index == 0 ? const ProfilePage() : const SettingsPage(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
