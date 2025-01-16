import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset('assets/images/post1.png'),
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
            child: Row(
              children: [
                const Icon(
                  Icons.nature,
                  size: 16,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  'Travel',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 16,
          bottom: 72,
          child: Container(
            width: 247,
            child: Text(
              'If you could live anywhere in the world, where would you pick?',
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
                const CircleAvatar(),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Miranda Kehlani',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'STUTTGART',
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
