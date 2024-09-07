
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protflio_website/core/web_colors.dart';

class TextStyleTheme {
  static smallText()=> GoogleFonts.sora(textStyle: TextStyle(fontSize: 18,color: WebColors.secendryColors,fontWeight: FontWeight.w700));
  static smallText2()=> GoogleFonts.sora(textStyle: TextStyle(fontSize: 14,color: WebColors.backColors, fontWeight: FontWeight.bold));
  static smallText3()=> GoogleFonts.sora(textStyle: TextStyle(fontSize: 11,color: Colors.grey, fontWeight: FontWeight.normal));
  static largeText()=> GoogleFonts.sora(textStyle:TextStyle(color: WebColors.backColors,fontSize: 35, fontWeight: FontWeight.bold),);
  static bodyText ()=> GoogleFonts.sora (textStyle : TextStyle(color: WebColors.backColors,fontSize: 15));
  static sKillText()=> GoogleFonts.sora(textStyle: TextStyle(fontSize: 18,color: WebColors.colorsWhite));
  static viewButton()=> GoogleFonts.sora(textStyle: TextStyle(fontSize: 12,color: WebColors.secendryColors));
}