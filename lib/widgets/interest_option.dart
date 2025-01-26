import 'package:flutter/material.dart';
import 'package:friendzy/themes/light_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class InterestOption extends StatefulWidget {
  final String text;
  const InterestOption({
    super.key,
    required this.text,
  });

  @override
  State<InterestOption> createState() => _InterestOptionState();
}

class _InterestOptionState extends State<InterestOption> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClick = !isClick;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: isClick ? Color(0xffDD88CF) : Colors.white,
            border: Border.all(
              color: isClick? Colors.white : lightTheme.primaryColor.withOpacity(0.2) ,
            ),
            borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(8),
        child: Text(
          widget.text,
          style: GoogleFonts.poppins(
            color: isClick? Colors.white : lightTheme.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
