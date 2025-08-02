import 'package:flutter/material.dart';
import 'package:nusacodes_flutter_tugas/pages/profile_page.dart';
import 'package:nusacodes_flutter_tugas/pages/settings_page.dart';
import 'package:nusacodes_flutter_tugas/utils/routes.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({super.key});

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: index,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Home Tab Page'),
          bottom: TabBar(
            isScrollable: true,
            onTap: (newIndex) {
              setState(() {
                index = newIndex;
              });
            },
            tabs: const [
              Tab(text: 'Home Page'),
              Tab(text: 'Profile Page'),
              Tab(text: 'Settings Page'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            ProfilePage(),
            SettingsPage(),
          ],
        ),
      ),
    );
  }
}
