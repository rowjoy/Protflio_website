
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protflio_website/core/web_colors.dart';

class TextStyleTheme {
  static smallText()=> GoogleFonts.sora(textStyle: TextStyle(fontSize: 18,color: WebColors.secendryColors));
  static largeText()=> GoogleFonts.sora(textStyle:TextStyle(color: WebColors.backColors,fontSize: 35,),);
  static bodyText ()=> GoogleFonts.sora (textStyle : TextStyle(color: WebColors.backColors,fontSize: 15));
  static sKillText()=> GoogleFonts.sora(textStyle: TextStyle(fontSize: 18,color: WebColors.colorsWhite));
}