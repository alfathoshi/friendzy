import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/light_theme.dart';

class UserStory extends StatelessWidget {
  final String name;
  final String image;
  const UserStory({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xffDD88CF),
            radius: 30,
            child: CircleAvatar(
              backgroundColor: lightTheme.scaffoldBackgroundColor,
              radius: 28,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey.shade300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(image),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: GoogleFonts.poppins(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
