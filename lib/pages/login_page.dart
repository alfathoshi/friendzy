import 'package:flutter/material.dart';
import 'package:friendzy/themes/light_theme.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/navbar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/login_image.png',
                    scale: 4,
                  ),
                  SizedBox(
                    width: 350,
                    child: Text(
                      'Lets meeting new people around you',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context,
                          '/navbar'
                         );
                    },
                    child: Container(
                      width: 295,
                      height: 56,
                      decoration: BoxDecoration(
                          color: lightTheme.primaryColor,
                          borderRadius: BorderRadius.circular(32)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                foregroundColor: lightTheme.primaryColor,
                                child: const Icon(Icons.phone)),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Text(
                            'Login with Phone',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 295,
                    height: 56,
                    decoration: BoxDecoration(
                        color: const Color(0xffDD88CF),
                        borderRadius: BorderRadius.circular(32)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              foregroundColor: lightTheme.primaryColor,
                              child: Image.asset(
                                'assets/images/google.png',
                                scale: 3,
                              )),
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        Text(
                          'Login with Google',
                          style: GoogleFonts.poppins(
                            color: lightTheme.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 48),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(text: 'Don${"'t"} have an account? '),
                    TextSpan(
                      text: 'Sign Up',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffDD88CF),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
