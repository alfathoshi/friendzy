import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/light_theme.dart';

class MatchesRing extends StatelessWidget {
  final String type;
  final String image;
  final IconData icon;
  const MatchesRing({
    super.key,
    required this.type,
    required this.icon,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: CircleAvatar(
                  backgroundColor: const Color(0xffDD88CF),
                  radius: 30,
                  child: CircleAvatar(
                    backgroundColor: lightTheme.scaffoldBackgroundColor,
                    radius: 28,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey.shade300,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: ImageFiltered(
                            imageFilter:
                                ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                            child: Image.asset(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Icon(
                icon,
                color: Colors.white,
              )
            ],
          ),
          const SizedBox(height: 5),
          Text(
            type,
            style: GoogleFonts.poppins(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
