import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPartnersTab extends StatelessWidget {
  const SearchPartnersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'On Development',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
