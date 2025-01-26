import 'package:flutter/material.dart';
import 'package:friendzy/themes/light_theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MatchesDetailPage extends StatelessWidget {
  const MatchesDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            args['image'],
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 32, 24, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white,
                      )),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 24,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '${args['distance']} km',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${args['name']}, ${args['age']}',
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  args['location'],
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 2,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 14),
                Container(
                  width: 160,
                  height: 60,
                  decoration: BoxDecoration(
                      color: lightTheme.primaryColor,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: const Color(0xffDD88CF),
                      )),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircularPercentIndicator(
                          center: Text(
                            '${args['match']}%',
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 12),
                          ),
                          radius: 24,
                          percent: args['match'] / 100,
                          lineWidth: 4,
                          progressColor: const Color(0xffDD88CF),
                          backgroundColor:
                              const Color(0xffDD88CF).withOpacity(0.3),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Match',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 340,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  // About Section
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('About',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey,
                        )),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'A good listener. I love having a good talk to know each other’s side 😍.',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff22172A)),
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Interest',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey,
                        )),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      spacing: 8,
                      children: [
                        Chip(
                          label: Text(
                            '🌿 Nature',
                            style: GoogleFonts.poppins(
                              color: lightTheme.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          side: BorderSide(
                            color: lightTheme.primaryColor.withOpacity(0.4),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Chip(
                          label: Text(
                            '🌴 Travel',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: lightTheme.primaryColor,
                            ),
                          ),
                          side: BorderSide(
                            color: lightTheme.primaryColor.withOpacity(0.4),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Chip(
                          label: Text(
                            '✍️ Writing',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: lightTheme.primaryColor,
                            ),
                          ),
                          side: BorderSide(
                            color: lightTheme.primaryColor.withOpacity(0.4),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Chip(
                          label: Text(
                            '😊 Personality',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: lightTheme.primaryColor,
                            ),
                          ),
                          side: BorderSide(
                            color: lightTheme.primaryColor.withOpacity(0.4),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff752277).withOpacity(0.15),
              blurRadius: 40,
              offset: const Offset(8, 0),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: 248,
            height: 72,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: lightTheme.primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.cancel,
                  ),
                ),
                CircleAvatar(
                  radius: 28,
                  backgroundColor: lightTheme.primaryColor,
                  child: const Icon(
                    Icons.star,
                  ),
                ),
                const CircleAvatar(
                  radius: 28,
                  backgroundColor: Color(0xffDD88CF),
                  child: Icon(
                    Icons.favorite,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
