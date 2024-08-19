import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protflio_website/core/web_sizes.dart';

class WebLogo extends StatelessWidget {
  const WebLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Jamirul islam".toUpperCase(),
      style: GoogleFonts.sora(
        textStyle: TextStyle(
          fontSize: WebSizes.webfontSize(context),
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
      )
    );
  }
}