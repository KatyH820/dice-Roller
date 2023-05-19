import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.text, required this.size});

  final String text;
  final double size;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lobsterTwo(
        fontSize: size,
      ),
    );
  }
}
