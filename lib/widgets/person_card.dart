import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/light_theme.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset('assets/images/person1.png'),
        ),
        Positioned(
          top: 8,
          left: 16,
          child: Container(
            decoration: BoxDecoration(
                color: lightTheme.primaryColor,
                border: Border.all(color: const Color(0xffDD88CF)),
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(8),
            child: Text(
              'NEW',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(8),
                child: Text(
                  '4,8 km away',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Vanessa, 18',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'BALI',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 2,
                    fontSize: 11),
              )
            ],
          ),
        )
      ],
    );
  }
}
