import 'package:flutter/material.dart';
import 'package:friendzy/themes/light_theme.dart';
import 'package:friendzy/widgets/navbar.dart';

import 'themes/dark_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const Navbar(),
    );
  }
}
