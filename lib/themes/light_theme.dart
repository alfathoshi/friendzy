import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xff4B164C),
  scaffoldBackgroundColor: Color(0xffFDF7FD),
  appBarTheme:  AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.black),
    titleTextStyle: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 28,
      fontWeight: FontWeight.bold
    ),
  ),
  colorScheme: ColorScheme.light(
    background: Colors.grey[300]!,
    primary: Colors.grey[200]!,
    secondary: Colors.grey[300]!,
  ),
);
