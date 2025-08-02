import 'package:flutter/material.dart';
import 'package:nusacodes_flutter_tugas/pages/home_page.dart';
import 'package:nusacodes_flutter_tugas/pages/profile_page.dart';
import 'package:nusacodes_flutter_tugas/pages/settings_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String profile = '/profile';
  static const String settings = '/settings';

  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => const HomePage(),
      profile: (context) => const ProfilePage(),
      settings: (context) => const SettingsPage(),
    };
  }
}

final routes = AppRoutes.routes;
