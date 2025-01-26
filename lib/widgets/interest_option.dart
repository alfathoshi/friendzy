import 'package:flutter/material.dart';
import 'package:friendzy/themes/light_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class InterestOption extends StatelessWidget {
  final String text;
  final VoidCallback get;
  const InterestOption({super.key, required this.text, required this.get});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: get,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: lightTheme.primaryColor.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(8),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            color: lightTheme.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
