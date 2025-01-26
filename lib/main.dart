import 'package:flutter/material.dart';
import 'package:friendzy/pages/login_page.dart';
import 'package:friendzy/themes/light_theme.dart';
import 'package:friendzy/widgets/navbar.dart';

import 'pages/matches/matches_detail_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/matchesDetail': (context) => const MatchesDetailPage(),
        '/login': (context) => const LoginPage(),
        '/navbar': (context) => const Navbar(),
      },
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      initialRoute: '/login',
    );
  }
}
