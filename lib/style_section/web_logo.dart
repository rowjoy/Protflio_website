// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class WebLogo extends StatelessWidget {
  const WebLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText("Jamirul islam".toUpperCase(),
      style: GoogleFonts.sora(
        textStyle: TextStyle(
          fontSize: 0,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
      )
    ).animate().fadeIn();
  }
}