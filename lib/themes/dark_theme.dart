import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  tabBarTheme: TabBarTheme(
    labelColor: Colors.grey[300],
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.grey[200]),
    titleTextStyle: TextStyle(
      color: Colors.grey[200],
      fontSize: 20,
    ),
  ),
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.grey[900]!,
    secondary: Colors.grey[800]!,
  ),
);
