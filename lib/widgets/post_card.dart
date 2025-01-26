import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostCard extends StatelessWidget {
  final String postPict;
  final String name;
  final String caption;
  final String type;
  final String location;
  final String profilePict;
  const PostCard({
    super.key,
    required this.postPict,
    required this.name,
    required this.caption,
    required this.type,
    required this.location,
    required this.profilePict,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(postPict),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              width: 64,
              height: 184,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.4),
                    child: const Icon(Icons.thumb_up),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.4),
                    child: const Icon(Icons.chat_bubble),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.4),
                    child: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                border: Border.all(color: Colors.white.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(8),
            child: Text(
              type,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          left: 16,
          bottom: 72,
          child: Container(
            width: 247,
            child: Text(
              caption,
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Positioned(
            left: 16,
            bottom: 16,
            child: Row(
              children: [
                CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(profilePict)),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      location,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                )
              ],
            ))
      ],
    );
  }
}
