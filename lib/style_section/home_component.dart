

// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protflio_website/core/theme.dart';
import 'package:protflio_website/core/web_colors.dart';
import 'package:protflio_website/core/web_extention.dart';

import '../core/images_path.dart';
import '../core/web_sizes.dart';

class ProfileImageUser extends StatelessWidget {
  double opacity;
  ProfileImageUser({
    super.key,
    required this.opacity,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(seconds: 1),
      opacity: opacity,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
           Transform.translate(
             offset: Offset(10, 15),
             transformHitTests : false,
             child: Container(
               width: 235,
               height: 238,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 //color: WebColors.secendryColors,
                 border: Border(
                   bottom: BorderSide(width: 5, color: WebColors.secendryColors),
                   top: BorderSide(width: 3, color: WebColors.secendryColors),
                   left: BorderSide(width: 3, color: WebColors.secendryColors),
                   right: BorderSide(width: 3, color: WebColors.secendryColors)
                 ),
               ),
             ),
           ),
           AvatarGlow(
             glowColor:WebColors.secendryColors, 
             glowRadiusFactor: 0.3,
             child: Container(
               width: 230,
               height: 230,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: WebColors.secendryColors,
               ),
             ),
           ),
      
           Transform.translate(
             offset: const Offset(0, -35),
             child: Image.asset(ImagePath.useMe,   width: 400 , height: 300),
           ),
           Container(
             width: 235,
             height: 238,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               //color: WebColors.secendryColors,
               border: Border(
                 bottom: BorderSide(width: 5, color: WebColors.secendryColors),
                 top: BorderSide.none,
                 left: BorderSide(width: 3, color: WebColors.secendryColors),
                 right: BorderSide(width: 3, color: WebColors.secendryColors)
               ),
             ),
           ),
           
        ],
      ),
    );
  }
}

class HomeLeftSection extends StatelessWidget {
  bool ismallTobig;
  HomeLeftSection({
    super.key,
    required this.ismallTobig
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = WebSizes.mobileDevice(context) ? context.webwidth : context.webwidth * 0.5;
        return Container(
          width: width,
          child: Column(
            crossAxisAlignment:  WebSizes.mobileDevice(context) ? CrossAxisAlignment.center :  CrossAxisAlignment.start,
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
               IntroText(),
               SizedBox(height: 10),
               NameText(),
               SizedBox(height: 10),
               InfomationText(),
               SizedBox(height: 30,),
               AnimatedSize(
                duration: Duration(seconds: 1),
                curve: Curves.easeInOutSine,
                child: ButtonSection(width: ismallTobig ? width : 0)
              ),
            ],
          ),
        );
      }
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
          AvatarGlow(
            glowColor:WebColors.secendryColors, 
           // glowRadiusFactor: 0.3,
            child: InkWell(
              onTap: (){
            
              },
              child: Container(
                width:  width / 2.5, //Download CV
                height: 45,
                decoration: BoxDecoration(
                  color: WebColors.secendryColors,
                  borderRadius: BorderRadius.circular(4.0)
                ),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Text("Download CV",
                       style: GoogleFonts.sora(
                         textStyle: TextStyle(
                           color: WebColors.colorsWhite,
                         )
                       ),
                     ),
                     Icon(Icons.download_sharp,color: WebColors.colorsWhite,)
                    //  SvgPicture.asset("download_icon.svg"),
                   ],
                ),
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: (){
              
            },
            child: Container(
             width: width / 2.5, //Explore More
              height: 45,
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color:  WebColors.secendryColors),
                  borderRadius: BorderRadius.circular(4.0)
              ),
              child: Center(
                child: Text("Explore More",
                    style: GoogleFonts.sora(
                      textStyle: TextStyle(
                        color: WebColors.smallFontColors,
                      )
                    ),
                  ),
              ),
             ),
          ),
          
         ],
      ),
    );
  }
}

class InfomationText extends StatelessWidget {
  const InfomationText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText("Hello I've successfully developed and maintained Flutter applications that prioritize user experience and performance.",
      textAlign: TextAlign.start,
      style: TextStyleTheme.bodyText(),
    );
  }
}

//I'm confident in my ability to write clean code, design intuitive interfaces, and collaborate effectively with cross-functional teams.

class NameText extends StatelessWidget {
  const NameText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText("Jamirul Islam Joy",
      style: TextStyleTheme.largeText(),
    );
  }
}

class IntroText extends StatelessWidget {
  const IntroText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText("Hi Everyone, I am",
     style: TextStyleTheme.smallText(),
    );
  }
}
