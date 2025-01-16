import 'package:flutter/material.dart';
import 'package:friendzy/themes/light_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class InterestOption extends StatelessWidget {
  const InterestOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: lightTheme.primaryColor.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Icon(
            Icons.nature,
            size: 18,
            color: lightTheme.primaryColor,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            '4,8 km away',
            style: GoogleFonts.poppins(
              color: lightTheme.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
