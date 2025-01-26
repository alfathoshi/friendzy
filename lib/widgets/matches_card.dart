import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchesCard extends StatelessWidget {
  final String name;
  final int match;
  final num distance;
  final int age;
  final String location;
  final String image;
  const MatchesCard({
    super.key,
    required this.name,
    required this.distance,
    required this.age,
    required this.location,
    required this.image,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: const Color(0xffDD88CF), width: 6)),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                image,
              ),
            ),
            Container(
              width: 98,
              height: 24,
              decoration: const BoxDecoration(
                  color: Color(0xffDD88CF),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )),
              child: Center(
                child: Text(
                  '$match% Match',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        border:
                            Border.all(color: Colors.white.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(32)),
                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                    child: Text(
                      '$distance km away',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '$name, $age',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    location,
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
        ),
      ),
    );
  }
}
